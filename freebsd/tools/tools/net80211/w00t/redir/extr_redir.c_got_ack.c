
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int frag; int data_try; int state; } ;


 int S_WAIT_BUDDY ;
 int send_data (struct params*) ;

void got_ack(struct params *p)
{
 switch (p->frag) {
 case 1:
  send_data(p);
  break;

 case 2:
  p->state = S_WAIT_BUDDY;
  p->data_try = 69;
  break;
 }
}
