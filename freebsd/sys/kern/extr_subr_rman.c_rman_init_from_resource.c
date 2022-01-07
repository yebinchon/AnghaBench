
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rman {int dummy; } ;
struct resource {TYPE_1__* __r_i; } ;
struct TYPE_2__ {int r_end; int r_start; } ;


 int rman_init (struct rman*) ;
 int rman_manage_region (struct rman*,int ,int ) ;

int
rman_init_from_resource(struct rman *rm, struct resource *r)
{
 int rv;

 if ((rv = rman_init(rm)) != 0)
  return (rv);
 return (rman_manage_region(rm, r->__r_i->r_start, r->__r_i->r_end));
}
