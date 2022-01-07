
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {TYPE_1__* __r_i; } ;
typedef scalar_t__ rman_res_t ;
struct TYPE_2__ {scalar_t__ r_start; scalar_t__ r_end; } ;



rman_res_t
rman_get_size(struct resource *r)
{

 return (r->__r_i->r_end - r->__r_i->r_start + 1);
}
