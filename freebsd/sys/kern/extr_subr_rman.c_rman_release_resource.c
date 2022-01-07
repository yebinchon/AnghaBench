
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int rm_mtx; } ;
struct resource_i {struct rman* r_rm; } ;
struct resource {struct resource_i* __r_i; } ;


 int int_rman_release_resource (struct rman*,struct resource_i*) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;

int
rman_release_resource(struct resource *re)
{
 int rv;
 struct resource_i *r;
 struct rman *rm;

 r = re->__r_i;
 rm = r->r_rm;
 mtx_lock(rm->rm_mtx);
 rv = int_rman_release_resource(rm, r);
 mtx_unlock(rm->rm_mtx);
 return (rv);
}
