
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct bfe_softc {int bfe_mtx; int * bfe_miibus; int bfe_stat_co; int bfe_flags; struct ifnet* bfe_ifp; } ;
typedef int device_t ;


 int BFE_FLAG_DETACH ;
 int BFE_LOCK (struct bfe_softc*) ;
 int BFE_UNLOCK (struct bfe_softc*) ;
 int bfe_chip_reset (struct bfe_softc*) ;
 int bfe_dma_free (struct bfe_softc*) ;
 int bfe_release_resources (struct bfe_softc*) ;
 int bfe_stop (struct bfe_softc*) ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct bfe_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
bfe_detach(device_t dev)
{
 struct bfe_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 ifp = sc->bfe_ifp;

 if (device_is_attached(dev)) {
  BFE_LOCK(sc);
  sc->bfe_flags |= BFE_FLAG_DETACH;
  bfe_stop(sc);
  BFE_UNLOCK(sc);
  callout_drain(&sc->bfe_stat_co);
  if (ifp != ((void*)0))
   ether_ifdetach(ifp);
 }

 BFE_LOCK(sc);
 bfe_chip_reset(sc);
 BFE_UNLOCK(sc);

 bus_generic_detach(dev);
 if (sc->bfe_miibus != ((void*)0))
  device_delete_child(dev, sc->bfe_miibus);

 bfe_release_resources(sc);
 bfe_dma_free(sc);
 mtx_destroy(&sc->bfe_mtx);

 return (0);
}
