
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; TYPE_3__* board; scalar_t__ num; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_5__ {unsigned long s1; unsigned long s0; } ;
struct TYPE_7__ {TYPE_1__ opt; } ;


 scalar_t__ M_E1 ;
 int ct_setup_e1 (TYPE_3__*) ;

int ct_set_ts (ct_chan_t *c, unsigned long ts)
{
 if (! (c->mode == M_E1))
  return -1;
 if (c->num)
  c->board->opt.s1 = ts;
 else
  c->board->opt.s0 = ts;
 ct_setup_e1 (c->board);
 return 0;
}
