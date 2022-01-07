
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf10bmac_softc {int nf10bmac_mtx; int nf10bmac_media; scalar_t__ nf10bmac_rx_intrhand; int nf10bmac_rx_irq_res; int nf10bmac_tick; struct ifnet* nf10bmac_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int NF10BMAC_LOCK (struct nf10bmac_softc*) ;
 int NF10BMAC_UNLOCK (struct nf10bmac_softc*) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int callout_drain (int *) ;
 int device_get_nameunit (int ) ;
 struct nf10bmac_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int nf10bmac_stop_locked (struct nf10bmac_softc*) ;

__attribute__((used)) static int
nf10bmac_detach(device_t dev)
{
 struct nf10bmac_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->nf10bmac_mtx),
     ("%s: mutex not initialized", device_get_nameunit(dev)));
 ifp = sc->nf10bmac_ifp;







 if (device_is_attached(dev)) {
  NF10BMAC_LOCK(sc);
  nf10bmac_stop_locked(sc);
  NF10BMAC_UNLOCK(sc);



  ether_ifdetach(ifp);
 }

 if (sc->nf10bmac_rx_intrhand)
  bus_teardown_intr(dev, sc->nf10bmac_rx_irq_res,
      sc->nf10bmac_rx_intrhand);

 if (ifp != ((void*)0))
  if_free(ifp);
 ifmedia_removeall(&sc->nf10bmac_media);

 mtx_destroy(&sc->nf10bmac_mtx);

 return (0);
}
