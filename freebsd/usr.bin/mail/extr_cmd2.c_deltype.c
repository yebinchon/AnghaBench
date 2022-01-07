
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ delm (int*) ;
 int * dot ;
 int * message ;
 int printf (char*) ;
 int touch (int *) ;
 int type (int*) ;

int
deltype(void *v)
{
 int *msgvec = v;
 int list[2];
 int lastdot;

 lastdot = dot - &message[0] + 1;
 if (delm(msgvec) >= 0) {
  list[0] = dot - &message[0] + 1;
  if (list[0] > lastdot) {
   touch(dot);
   list[1] = 0;
   return (type(list));
  }
  printf("At EOF\n");
 } else
  printf("No more messages\n");
 return (0);
}
