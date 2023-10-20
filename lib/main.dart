import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatefulWidget {
  @override
  _HelloWorldAppState createState() => _HelloWorldAppState();
}

class _HelloWorldAppState extends State<HelloWorldApp> {
  String greeting = "Hello, World!";

  void changeGreeting() {
    setState(() {
      greeting = "Semangat Dong, Masa Harapan Keluarga Lembek!!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, World App'),
        ),
        body: Container(
          color: Colors.black, // Set the background color to black
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  greeting,
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: changeGreeting,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Set button color
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Kata - Kata Hari Ini'),
                      Icon(Icons.help),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
