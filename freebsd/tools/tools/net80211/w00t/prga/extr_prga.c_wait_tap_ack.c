
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int frag; scalar_t__ state; scalar_t__ data_try; } ;


 scalar_t__ S_SEND_FRAG ;
 scalar_t__ S_START ;
 int printf (char*) ;
 int wait_ack (struct params*) ;

void wait_tap_ack(struct params *p)
{
 p->data_try = 0;
 p->frag = 1;
 wait_ack(p);

 if (p->state == S_SEND_FRAG) {



  p->state = S_START;
 }
}
