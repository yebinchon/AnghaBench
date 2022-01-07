
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int sc_detach; int sc_mtx; int sc_mii_mtx; int * sc_res; int sc_spec; int * sc_ih; struct ifnet* sc_ifp; int * sc_miibus; int sc_link_task; int sc_tick_ch; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int STGE_LOCK (struct stge_softc*) ;
 int STGE_UNLOCK (struct stge_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct stge_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int stge_dma_free (struct stge_softc*) ;
 int stge_stop (struct stge_softc*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static int
stge_detach(device_t dev)
{
 struct stge_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 ifp = sc->sc_ifp;




 if (device_is_attached(dev)) {
  STGE_LOCK(sc);

  sc->sc_detach = 1;
  stge_stop(sc);
  STGE_UNLOCK(sc);
  callout_drain(&sc->sc_tick_ch);
  taskqueue_drain(taskqueue_swi, &sc->sc_link_task);
  ether_ifdetach(ifp);
 }

 if (sc->sc_miibus != ((void*)0)) {
  device_delete_child(dev, sc->sc_miibus);
  sc->sc_miibus = ((void*)0);
 }
 bus_generic_detach(dev);
 stge_dma_free(sc);

 if (ifp != ((void*)0)) {
  if_free(ifp);
  sc->sc_ifp = ((void*)0);
 }

 if (sc->sc_ih) {
  bus_teardown_intr(dev, sc->sc_res[1], sc->sc_ih);
  sc->sc_ih = ((void*)0);
 }
 bus_release_resources(dev, sc->sc_spec, sc->sc_res);

 mtx_destroy(&sc->sc_mii_mtx);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
