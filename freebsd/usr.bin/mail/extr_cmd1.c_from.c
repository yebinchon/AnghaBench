
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dot ;
 int * message ;
 int printhead (int) ;

int
from(void *v)
{
 int *msgvec = v;
 int *ip;

 for (ip = msgvec; *ip != 0; ip++)
  printhead(*ip);
 if (--ip >= msgvec)
  dot = &message[*ip - 1];
 return (0);
}
