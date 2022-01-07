
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int ifp; int if_media; int * reg_base; int stats_mtx; } ;
typedef int device_t ;


 int NICVF_CORE_LOCK (struct nicvf*) ;
 int NICVF_CORE_LOCK_DESTROY (struct nicvf*) ;
 int NICVF_CORE_UNLOCK (struct nicvf*) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct nicvf* device_get_softc (int ) ;
 int if_free (int ) ;
 int ifmedia_removeall (int *) ;
 int mtx_destroy (int *) ;
 int nicvf_release_all_interrupts (struct nicvf*) ;
 int nicvf_stop_locked (struct nicvf*) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
nicvf_detach(device_t dev)
{
 struct nicvf *nic;

 nic = device_get_softc(dev);

 NICVF_CORE_LOCK(nic);

 nicvf_stop_locked(nic);

 mtx_destroy(&nic->stats_mtx);

 nicvf_release_all_interrupts(nic);

 if (nic->reg_base != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(nic->reg_base), nic->reg_base);
 }


 ifmedia_removeall(&nic->if_media);

 if_free(nic->ifp);
 NICVF_CORE_UNLOCK(nic);

 NICVF_CORE_LOCK_DESTROY(nic);

 return (0);
}
