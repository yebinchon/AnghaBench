
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_flags; int * bge_miibus; int bge_ifmedia; int bge_intr_task; scalar_t__ bge_tq; int bge_stat_ch; int bge_ifp; } ;
typedef int if_t ;
typedef int device_t ;


 int BGE_FLAG_TBI ;
 int BGE_LOCK (struct bge_softc*) ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int IFCAP_POLLING ;
 int bge_release_resources (struct bge_softc*) ;
 int bge_stop (struct bge_softc*) ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct bge_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (int ) ;
 int ether_poll_deregister (int ) ;
 int if_getcapenable (int ) ;
 int ifmedia_removeall (int *) ;
 int taskqueue_drain (scalar_t__,int *) ;

__attribute__((used)) static int
bge_detach(device_t dev)
{
 struct bge_softc *sc;
 if_t ifp;

 sc = device_get_softc(dev);
 ifp = sc->bge_ifp;






 if (device_is_attached(dev)) {
  ether_ifdetach(ifp);
  BGE_LOCK(sc);
  bge_stop(sc);
  BGE_UNLOCK(sc);
  callout_drain(&sc->bge_stat_ch);
 }

 if (sc->bge_tq)
  taskqueue_drain(sc->bge_tq, &sc->bge_intr_task);

 if (sc->bge_flags & BGE_FLAG_TBI)
  ifmedia_removeall(&sc->bge_ifmedia);
 else if (sc->bge_miibus != ((void*)0)) {
  bus_generic_detach(dev);
  device_delete_child(dev, sc->bge_miibus);
 }

 bge_release_resources(sc);

 return (0);
}
