
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* board; scalar_t__ num; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_4__ {int port; } ;


 int E1CS2 (int ) ;
 int E1CS2_AB ;
 int E1CS2_DC ;
 int E1CS2_SCC ;
 int E1DAT (int ) ;
 unsigned char inb (int ) ;
 int outb (int ,int) ;

unsigned char cte_in2d (ct_chan_t *c)
{
 outb (E1CS2(c->board->port), E1CS2_SCC | E1CS2_DC |
  (c->num ? 0 : E1CS2_AB));
 return inb (E1DAT(c->board->port));
}
