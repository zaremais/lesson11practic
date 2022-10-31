import 'dart:math';

void main() {
task1();
task2();
task3();
task4();
}

//1)Выведите на экран сумму двух случайно сгенерированных чисел

void task1() {
  int randomNumber = Random().nextInt(100);
  int randomNumber1 = Random().nextInt(50);
  print(randomNumber + randomNumber1);
}
//2) Заполните массив случайными числами, размер массива задайте через рандом

void task2() {
  List arr = [];

  for (int i = 0; i <= Random().nextInt(50); i++) {
    arr.add(Random().nextInt(100));
  }
  print(arr);
}

// 3)Заполните массив случайными числами в интервале [0,5]. Введите число X
// и найдите все индексы значения, равные X.

void task3() {
  List random = [];
  int min = 0;
  int max = 10;
  int x = 3;

  for (int i = 0; i < min + Random().nextInt(max - min); i++) {
    int randomNumber = (Random().nextInt(6));
    random.add(randomNumber);
  }
  print('random == $random');

  for (int i = 0; i < random.length; i++) {
    if (random[i] == x) {
      print('index == $i');
    }
  }
}

// 4)Заполните массив случайными числами в интервале [50,100]. Определить,
// есть ли в нем элементы с одинаковыми значениями, стоящие рядом.
void task4() {

  int min = 50;
  int max = 100;

  List random =
      List.generate(100, (index) => min + Random().nextInt(max - min));

  print(random);

  for (int i = 0; i < random.length - 1; i++) {
    if (random[i] == random[i + 1]) {
      print(random[i]);
    }
  }
}
