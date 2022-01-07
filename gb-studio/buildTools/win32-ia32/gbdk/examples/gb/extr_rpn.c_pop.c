
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int puts (char*) ;
 size_t sp ;
 int * stack ;

WORD pop()
{
  if(sp > 0)
    return stack[--sp];
  else
    puts("Stack empty");
  return 0;
}
