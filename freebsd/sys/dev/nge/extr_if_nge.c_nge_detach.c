
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int * nge_res; int nge_res_id; int nge_res_type; int * nge_irq; int * nge_intrhand; int * nge_miibus; int nge_stat_ch; int nge_flags; struct ifnet* nge_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int NGE_FLAG_DETACH ;
 int NGE_LOCK (struct nge_softc*) ;
 int NGE_LOCK_DESTROY (struct nge_softc*) ;
 int NGE_UNLOCK (struct nge_softc*) ;
 int SYS_RES_IRQ ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct nge_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int nge_dma_free (struct nge_softc*) ;
 int nge_stop (struct nge_softc*) ;

__attribute__((used)) static int
nge_detach(device_t dev)
{
 struct nge_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->nge_ifp;






 if (device_is_attached(dev)) {
  NGE_LOCK(sc);
  sc->nge_flags |= NGE_FLAG_DETACH;
  nge_stop(sc);
  NGE_UNLOCK(sc);
  callout_drain(&sc->nge_stat_ch);
  if (ifp != ((void*)0))
   ether_ifdetach(ifp);
 }

 if (sc->nge_miibus != ((void*)0)) {
  device_delete_child(dev, sc->nge_miibus);
  sc->nge_miibus = ((void*)0);
 }
 bus_generic_detach(dev);
 if (sc->nge_intrhand != ((void*)0))
  bus_teardown_intr(dev, sc->nge_irq, sc->nge_intrhand);
 if (sc->nge_irq != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->nge_irq);
 if (sc->nge_res != ((void*)0))
  bus_release_resource(dev, sc->nge_res_type, sc->nge_res_id,
      sc->nge_res);

 nge_dma_free(sc);
 if (ifp != ((void*)0))
  if_free(ifp);

 NGE_LOCK_DESTROY(sc);

 return (0);
}
