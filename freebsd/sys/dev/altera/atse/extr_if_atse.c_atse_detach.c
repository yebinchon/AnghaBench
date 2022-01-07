
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct atse_softc {int xdma_rx; int xdma_tx; int xchan_rx; int xchan_tx; int atse_mtx; int * atse_miibus; int atse_tick; struct ifnet* atse_ifp; } ;
typedef int device_t ;


 int ATSE_LOCK (struct atse_softc*) ;
 int ATSE_UNLOCK (struct atse_softc*) ;
 int KASSERT (int ,char*) ;
 int atse_stop_locked (struct atse_softc*) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 int device_get_nameunit (int ) ;
 struct atse_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int xdma_channel_free (int ) ;
 int xdma_put (int ) ;

__attribute__((used)) static int
atse_detach(device_t dev)
{
 struct atse_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->atse_mtx), ("%s: mutex not initialized",
     device_get_nameunit(dev)));
 ifp = sc->atse_ifp;


 if (device_is_attached(dev)) {
  ATSE_LOCK(sc);
  atse_stop_locked(sc);
  ATSE_UNLOCK(sc);
  callout_drain(&sc->atse_tick);
  ether_ifdetach(ifp);
 }
 if (sc->atse_miibus != ((void*)0)) {
  device_delete_child(dev, sc->atse_miibus);
 }

 if (ifp != ((void*)0)) {
  if_free(ifp);
 }

 mtx_destroy(&sc->atse_mtx);

 xdma_channel_free(sc->xchan_tx);
 xdma_channel_free(sc->xchan_rx);
 xdma_put(sc->xdma_tx);
 xdma_put(sc->xdma_rx);

 return (0);
}
