
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rxs; } ;
struct TYPE_5__ {TYPE_1__ hopt; } ;
typedef TYPE_2__ ct_chan_t ;


 scalar_t__ CLK_RXS_DPLL_INT ;

int ct_get_dpll (ct_chan_t *c)
{
 return (c->hopt.rxs == CLK_RXS_DPLL_INT);
}
