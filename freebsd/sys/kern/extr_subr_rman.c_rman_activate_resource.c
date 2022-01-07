
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int rm_mtx; } ;
struct resource_i {int r_flags; struct rman* r_rm; } ;
struct resource {struct resource_i* __r_i; } ;


 int RF_ACTIVE ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;

int
rman_activate_resource(struct resource *re)
{
 struct resource_i *r;
 struct rman *rm;

 r = re->__r_i;
 rm = r->r_rm;
 mtx_lock(rm->rm_mtx);
 r->r_flags |= RF_ACTIVE;
 mtx_unlock(rm->rm_mtx);
 return 0;
}
