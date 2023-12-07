import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ama(),
      ),
    );

class Ama extends StatefulWidget {
  const Ama({Key? key}) : super(key: key);

  @override
  State<Ama> createState() => _AmaState();
}

class _AmaState extends State<Ama> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: TextButton(
          onPressed: (() => setState(() {
                ballNumber = Random().nextInt(5) + 1;
              })),
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
