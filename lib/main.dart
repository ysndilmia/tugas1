import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ('assets/flutter.png'),
              width: 30,
              height: 30,
            ),
            SizedBox(
                height: 50
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Form(
                  child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email',
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0,10.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        ),
                        onChanged: (String value){
                        },
                      ),
                    ),
                    SizedBox(
                        height: 15
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0,10.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                          ),
                          onChanged: (String value){
                          },
                       ),
                    ),
                    SizedBox(
                        height: 40
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: SizedBox(
                        width: 1500,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: (){
                          },
                          child: Text('Log In'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: SizedBox(
                        width: 1500,
                        height: 35,
                        child: FlatButton(
                          onPressed: (){
                          },
                          child: Text('Forgot Password?'),
                        ),
                      ),
                    ),
                  ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}



