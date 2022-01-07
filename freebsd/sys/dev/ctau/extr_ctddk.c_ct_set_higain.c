
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int higain; } ;
struct TYPE_5__ {scalar_t__ mode; int board; TYPE_1__ gopt; } ;
typedef TYPE_2__ ct_chan_t ;


 scalar_t__ M_E1 ;
 int ct_setup_e1 (int ) ;

int ct_set_higain (ct_chan_t *c, int on)
{
 if (! (c->mode == M_E1))
  return -1;
 c->gopt.higain = on ? 1 : 0;
 ct_setup_e1 (c->board);
 return 0;
}
