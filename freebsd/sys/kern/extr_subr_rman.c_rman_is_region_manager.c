
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rman {int dummy; } ;
struct resource {TYPE_1__* __r_i; } ;
struct TYPE_2__ {struct rman* r_rm; } ;



int
rman_is_region_manager(struct resource *r, struct rman *rm)
{

 return (r->__r_i->r_rm == rm);
}
