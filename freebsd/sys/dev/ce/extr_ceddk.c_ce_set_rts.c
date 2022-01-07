
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rts; } ;
typedef TYPE_1__ ce_chan_t ;



void ce_set_rts (ce_chan_t *c, int on)
{
 c->rts = on?1:0;
}
