import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp()

  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text('DiceApp cua Duyen'),
          backgroundColor: Colors.teal,
        ),
        body: Dicepage(),
      ),
    );
  }
}
// class DicePage extends StatelessWidget {
//     DicePage({Key? key}) : super(key: key);
//
// }
class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber =  1;
  int rightDiceNumber = 1;

  void ChangeDiceValue(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                    onTap: (){
                      ChangeDiceValue();
                    },
                    child: Image.asset("assets/dice$leftDiceNumber.png")),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                    onTap: (){
                      ChangeDiceValue();
                    },
                    child: Image.asset("assets/dice$rightDiceNumber.png")),
              )
          )
        ],
      ),
    );
  }
}


