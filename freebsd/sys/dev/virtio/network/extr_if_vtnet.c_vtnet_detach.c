
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int * vtnet_ctrl_vq; struct ifnet* vtnet_ifp; int vtnet_media; int * vtnet_vlan_detach; int * vtnet_vlan_attach; int vtnet_tick_ch; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int VTNET_CORE_LOCK (struct vtnet_softc*) ;
 int VTNET_CORE_LOCK_DESTROY (struct vtnet_softc*) ;
 int VTNET_CORE_UNLOCK (struct vtnet_softc*) ;
 int callout_drain (int *) ;
 struct vtnet_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int netmap_detach (struct ifnet*) ;
 int vlan_config ;
 int vlan_unconfig ;
 int vtnet_drain_taskqueues (struct vtnet_softc*) ;
 int vtnet_free_ctrl_vq (struct vtnet_softc*) ;
 int vtnet_free_rx_filters (struct vtnet_softc*) ;
 int vtnet_free_rxtx_queues (struct vtnet_softc*) ;
 int vtnet_free_taskqueues (struct vtnet_softc*) ;
 int vtnet_stop (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_detach(device_t dev)
{
 struct vtnet_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->vtnet_ifp;

 if (device_is_attached(dev)) {
  VTNET_CORE_LOCK(sc);
  vtnet_stop(sc);
  VTNET_CORE_UNLOCK(sc);

  callout_drain(&sc->vtnet_tick_ch);
  vtnet_drain_taskqueues(sc);

  ether_ifdetach(ifp);
 }





 vtnet_free_taskqueues(sc);

 if (sc->vtnet_vlan_attach != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(vlan_config, sc->vtnet_vlan_attach);
  sc->vtnet_vlan_attach = ((void*)0);
 }
 if (sc->vtnet_vlan_detach != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(vlan_unconfig, sc->vtnet_vlan_detach);
  sc->vtnet_vlan_detach = ((void*)0);
 }

 ifmedia_removeall(&sc->vtnet_media);

 if (ifp != ((void*)0)) {
  if_free(ifp);
  sc->vtnet_ifp = ((void*)0);
 }

 vtnet_free_rxtx_queues(sc);
 vtnet_free_rx_filters(sc);

 if (sc->vtnet_ctrl_vq != ((void*)0))
  vtnet_free_ctrl_vq(sc);

 VTNET_CORE_LOCK_DESTROY(sc);

 return (0);
}
