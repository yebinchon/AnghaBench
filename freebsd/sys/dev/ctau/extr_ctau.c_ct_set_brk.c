
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; int CTL; } ;
typedef TYPE_1__ ct_chan_t ;


 int CTL_BRK ;
 scalar_t__ M_ASYNC ;
 int inb (int ) ;
 int outb (int ,int) ;

void ct_set_brk (ct_chan_t *c, int on)
{
 if (c->mode != M_ASYNC)
  return;
 if (on)
  outb (c->CTL, inb (c->CTL) | CTL_BRK);
 else
  outb (c->CTL, inb (c->CTL) & ~CTL_BRK);
}
