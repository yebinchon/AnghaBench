
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rxs; } ;
struct TYPE_7__ {TYPE_1__ hopt; } ;
typedef TYPE_2__ ct_chan_t ;


 int CLK_LINE ;
 int CLK_RXS_DPLL_INT ;
 scalar_t__ ct_get_baud (TYPE_2__*) ;
 int ct_update_chan (TYPE_2__*) ;

void ct_set_dpll (ct_chan_t *c, int on)
{
 if (on && ct_get_baud (c))
  c->hopt.rxs = CLK_RXS_DPLL_INT;
 else
  c->hopt.rxs = CLK_LINE;
 ct_update_chan (c);
}
