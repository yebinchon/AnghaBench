
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int state; } ;




 int abort () ;
 int printf (char*,int) ;
 int read_tap (struct params*) ;
 int wait_tap_ack (struct params*) ;

void transmit(struct params *p)
{
 switch (p->state) {
 case 129:
  read_tap(p);
  break;

 case 128:
  wait_tap_ack(p);
  break;

 default:
  printf("wtf %d\n", p->state);
  abort();
  break;
 }
}
