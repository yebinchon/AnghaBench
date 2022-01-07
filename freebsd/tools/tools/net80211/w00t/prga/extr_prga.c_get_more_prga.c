
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int state; } ;






 int abort () ;
 int printf (char*,int) ;
 int send_frag (struct params*) ;
 int start (struct params*) ;
 int wait_ack (struct params*) ;
 int wait_relay (struct params*) ;

void get_more_prga(struct params *p)
{
 switch (p->state) {
 case 130:
  start(p);
  break;

 case 131:
  send_frag(p);
  break;

 case 129:
  wait_ack(p);
  break;

 case 128:
  wait_relay(p);
  break;

 default:
  printf("WTF %d\n", p->state);
  abort();
  break;
 }
}
