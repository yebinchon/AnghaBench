
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtrnd_softc {int dummy; } ;
typedef int device_t ;


 int C_HARDCLOCK ;
 int KASSERT (int,char*) ;
 struct vtrnd_softc* atomic_load_explicit (int *,int ) ;
 int atomic_store_explicit (int *,int *,int ) ;
 struct vtrnd_softc* device_get_softc (int ) ;
 int g_vtrnd_softc ;
 int memory_order_acquire ;
 int memory_order_release ;
 int mstosbt (int) ;
 int random_source_deregister (int *) ;
 int random_vtrnd ;
 int tsleep_sbt (int *,int ,char*,int ,int ,int ) ;

__attribute__((used)) static int
vtrnd_detach(device_t dev)
{
 struct vtrnd_softc *sc;

 sc = device_get_softc(dev);
 KASSERT(
     atomic_load_explicit(&g_vtrnd_softc, memory_order_acquire) == sc,
     ("only one global instance at a time"));

 random_source_deregister(&random_vtrnd);
 atomic_store_explicit(&g_vtrnd_softc, ((void*)0), memory_order_release);






 tsleep_sbt(&g_vtrnd_softc, 0, "vtrnddet", mstosbt(50), 0, C_HARDCLOCK);

 return (0);
}
