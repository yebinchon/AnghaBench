
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BYTE ;



 int n ;
 int pop () ;
 scalar_t__ pos ;
 int printf (char*,int) ;
 int push (int) ;
 int puts (char*) ;
 int read_op () ;
 scalar_t__ sp ;
 int top () ;

void main(void)
{
  BYTE type;
  WORD op2;

  puts("RPN Calculator");
  sp = 0;
  pos = 0;

  while((type = read_op()) != 0) {
    switch(type) {
    case 128:
      push(n);
      break;
    case '+':
      push(pop() + pop());
      break;
    case '*':
      push(pop() * pop());
      break;
    case '-':
      op2 = pop();
      push(pop() - op2);
      break;
    case '/':
      op2 = pop();
      if(op2 != 0)
 push(pop() / op2);
      else
 puts("Divide by 0");
      break;
    case '\n':
      printf("==> %d\n", top());
      break;
    }
  }
}
