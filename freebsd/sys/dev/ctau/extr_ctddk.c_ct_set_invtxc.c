
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* board; scalar_t__ num; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_4__ {int bcr2; int port; } ;


 int BCR2 (int ) ;
 int BCR2_INVTXC0 ;
 int BCR2_INVTXC1 ;
 int outb (int ,int ) ;

void ct_set_invtxc (ct_chan_t *c, int on)
{
 if (on) c->board->bcr2 |= (c->num ? BCR2_INVTXC1 : BCR2_INVTXC0);
 else c->board->bcr2 &= ~(c->num ? BCR2_INVTXC1 : BCR2_INVTXC0);
 outb (BCR2(c->board->port), c->board->bcr2);
}
