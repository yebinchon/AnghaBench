
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dpll; } ;
struct TYPE_6__ {TYPE_1__ rcor; } ;
struct TYPE_7__ {TYPE_2__ opt; } ;
typedef TYPE_3__ cx_chan_t ;



int cx_get_dpll (cx_chan_t *c)
{
 return c->opt.rcor.dpll ? 1 : 0;
}
