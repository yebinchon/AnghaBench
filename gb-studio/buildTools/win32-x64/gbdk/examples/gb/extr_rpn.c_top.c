
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int puts (char*) ;
 int sp ;
 int * stack ;

WORD top(void)
{
  if(sp > 0)
    return stack[sp-1];
  else
    puts("Stack empty");
  return 0;
}
