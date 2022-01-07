
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 scalar_t__ STACKSIZE ;
 int puts (char*) ;
 scalar_t__ sp ;
 int * stack ;

void push(WORD l)
{
  if(sp < STACKSIZE)
    stack[sp++] = l;
  else
    puts("Stack full");
}
