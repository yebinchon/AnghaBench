
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dtr; TYPE_1__* board; scalar_t__ num; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_4__ {int bcr1; int port; } ;


 int BCR1 (int ) ;
 int BCR1_DTR0 ;
 int BCR1_DTR1 ;
 int outb (int ,int ) ;

void ct_set_dtr (ct_chan_t *c, int on)
{
 if (on) {
  c->dtr = 1;
  c->board->bcr1 |= c->num ? BCR1_DTR1 : BCR1_DTR0;
 } else {
  c->dtr = 0;
  c->board->bcr1 &= ~(c->num ? BCR1_DTR1 : BCR1_DTR0);
 }
 outb (BCR1(c->board->port), c->board->bcr1);
}
