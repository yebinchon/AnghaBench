
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bcr0b; scalar_t__ port; TYPE_1__* chan; int bcr0; } ;
typedef TYPE_2__ cx_board_t ;
struct TYPE_4__ {scalar_t__ port; } ;


 int BCR0 (scalar_t__) ;
 int outb (int ,int ) ;

void cx_intr_on (cx_board_t *b)
{
 outb (BCR0(b->port), b->bcr0);
 if (b->chan[8].port || b->chan[12].port)
  outb (BCR0(b->port+0x10), b->bcr0b);
}
