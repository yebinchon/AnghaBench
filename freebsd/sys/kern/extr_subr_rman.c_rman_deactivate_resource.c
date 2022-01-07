
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rman {int rm_mtx; } ;
struct resource {TYPE_1__* __r_i; } ;
struct TYPE_2__ {int r_flags; struct rman* r_rm; } ;


 int RF_ACTIVE ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;

int
rman_deactivate_resource(struct resource *r)
{
 struct rman *rm;

 rm = r->__r_i->r_rm;
 mtx_lock(rm->rm_mtx);
 r->__r_i->r_flags &= ~RF_ACTIVE;
 mtx_unlock(rm->rm_mtx);
 return 0;
}
