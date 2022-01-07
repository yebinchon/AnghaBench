
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {TYPE_1__* __r_i; } ;
typedef int rman_res_t ;
struct TYPE_2__ {int r_start; } ;



void
rman_set_start(struct resource *r, rman_res_t start)
{

 r->__r_i->r_start = start;
}
