
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rts; int CTL; } ;
typedef TYPE_1__ ct_chan_t ;


 int CTL_RTS_INV ;
 int inb (int ) ;
 int outb (int ,int) ;

void ct_set_rts (ct_chan_t *c, int on)
{
 c->rts = (on != 0);
 if (c->rts)
  outb (c->CTL, inb (c->CTL) & ~CTL_RTS_INV);
 else
  outb (c->CTL, inb (c->CTL) | CTL_RTS_INV);
}
