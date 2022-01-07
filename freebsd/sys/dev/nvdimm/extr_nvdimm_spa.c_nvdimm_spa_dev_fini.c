
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvdimm_spa_dev {int * spa_kva; int spa_len; int spa_obj; int * spa_dev; TYPE_1__* spa_g; } ;
struct TYPE_2__ {int class; } ;


 int destroy_dev (int *) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int nvdimm_spa_g_destroy_geom (int *,int ,TYPE_1__*) ;
 int pmap_large_unmap (int *,int ) ;
 int vm_object_deallocate (int ) ;

void
nvdimm_spa_dev_fini(struct nvdimm_spa_dev *dev)
{

 if (dev->spa_g != ((void*)0)) {
  g_topology_lock();
  nvdimm_spa_g_destroy_geom(((void*)0), dev->spa_g->class, dev->spa_g);
  g_topology_unlock();
 }
 if (dev->spa_dev != ((void*)0)) {
  destroy_dev(dev->spa_dev);
  dev->spa_dev = ((void*)0);
 }
 vm_object_deallocate(dev->spa_obj);
 if (dev->spa_kva != ((void*)0)) {
  pmap_large_unmap(dev->spa_kva, dev->spa_len);
  dev->spa_kva = ((void*)0);
 }
}
