
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xae_softc {int xdma_rx; int xdma_tx; int xchan_rx; int xchan_tx; int * res; int intr_cookie; int mtx; int * miibus; int xae_callout; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 int XAE_LOCK (struct xae_softc*) ;
 int XAE_UNLOCK (struct xae_softc*) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 int device_get_nameunit (int ) ;
 struct xae_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int xae_spec ;
 int xae_stop_locked (struct xae_softc*) ;
 int xdma_channel_free (int ) ;
 int xdma_put (int ) ;

__attribute__((used)) static int
xae_detach(device_t dev)
{
 struct xae_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 KASSERT(mtx_initialized(&sc->mtx), ("%s: mutex not initialized",
     device_get_nameunit(dev)));

 ifp = sc->ifp;


 if (device_is_attached(dev)) {
  XAE_LOCK(sc);
  xae_stop_locked(sc);
  XAE_UNLOCK(sc);
  callout_drain(&sc->xae_callout);
  ether_ifdetach(ifp);
 }

 if (sc->miibus != ((void*)0))
  device_delete_child(dev, sc->miibus);

 if (ifp != ((void*)0))
  if_free(ifp);

 mtx_destroy(&sc->mtx);

 bus_teardown_intr(dev, sc->res[1], sc->intr_cookie);

 bus_release_resources(dev, xae_spec, sc->res);

 xdma_channel_free(sc->xchan_tx);
 xdma_channel_free(sc->xchan_rx);
 xdma_put(sc->xdma_tx);
 xdma_put(sc->xdma_rx);

 return (0);
}
