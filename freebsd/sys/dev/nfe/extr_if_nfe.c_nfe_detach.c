
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nfe_softc {int nfe_flags; scalar_t__ nfe_msi; scalar_t__ nfe_msix; int nfe_mtx; int * nfe_parent_tag; int jrxq; int rxq; int txq; int ** nfe_res; int * nfe_msix_res; int * nfe_msix_pba_res; int ** nfe_irq; int ** nfe_intrhand; int * nfe_tq; int nfe_int_task; scalar_t__ nfe_miibus; int * eaddr; int nfe_stat_ch; int * nfe_ifp; } ;
typedef int * if_t ;
typedef int device_t ;


 int ETHER_ADDR_LEN ;
 int IFCAP_POLLING ;
 int IFF_UP ;
 int KASSERT (int ,char*) ;
 int NFE_CORRECT_MACADDR ;
 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_MSI_MESSAGES ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 int PCIR_BAR (int) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bcopy (int *,int *,int) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct nfe_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (int *) ;
 int ether_poll_deregister (int *) ;
 int if_free (int *) ;
 int if_getcapenable (int *) ;
 int if_setflagbits (int *,int ,int ) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int nfe_free_jrx_ring (struct nfe_softc*,int *) ;
 int nfe_free_rx_ring (struct nfe_softc*,int *) ;
 int nfe_free_tx_ring (struct nfe_softc*,int *) ;
 int nfe_set_macaddr (struct nfe_softc*,int *) ;
 int nfe_stop (int *) ;
 int pci_release_msi (int ) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static int
nfe_detach(device_t dev)
{
 struct nfe_softc *sc;
 if_t ifp;
 uint8_t eaddr[ETHER_ADDR_LEN];
 int i, rid;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->nfe_mtx), ("nfe mutex not initialized"));
 ifp = sc->nfe_ifp;





 if (device_is_attached(dev)) {
  NFE_LOCK(sc);
  nfe_stop(ifp);
  if_setflagbits(ifp, 0, IFF_UP);
  NFE_UNLOCK(sc);
  callout_drain(&sc->nfe_stat_ch);
  ether_ifdetach(ifp);
 }

 if (ifp) {

  if ((sc->nfe_flags & NFE_CORRECT_MACADDR) == 0) {
   for (i = 0; i < ETHER_ADDR_LEN; i++) {
    eaddr[i] = sc->eaddr[5 - i];
   }
  } else
   bcopy(sc->eaddr, eaddr, ETHER_ADDR_LEN);
  nfe_set_macaddr(sc, eaddr);
  if_free(ifp);
 }
 if (sc->nfe_miibus)
  device_delete_child(dev, sc->nfe_miibus);
 bus_generic_detach(dev);
 if (sc->nfe_tq != ((void*)0)) {
  taskqueue_drain(sc->nfe_tq, &sc->nfe_int_task);
  taskqueue_free(sc->nfe_tq);
  sc->nfe_tq = ((void*)0);
 }

 for (i = 0; i < NFE_MSI_MESSAGES; i++) {
  if (sc->nfe_intrhand[i] != ((void*)0)) {
   bus_teardown_intr(dev, sc->nfe_irq[i],
       sc->nfe_intrhand[i]);
   sc->nfe_intrhand[i] = ((void*)0);
  }
 }

 if (sc->nfe_msi == 0 && sc->nfe_msix == 0) {
  if (sc->nfe_irq[0] != ((void*)0))
   bus_release_resource(dev, SYS_RES_IRQ, 0,
       sc->nfe_irq[0]);
 } else {
  for (i = 0, rid = 1; i < NFE_MSI_MESSAGES; i++, rid++) {
   if (sc->nfe_irq[i] != ((void*)0)) {
    bus_release_resource(dev, SYS_RES_IRQ, rid,
        sc->nfe_irq[i]);
    sc->nfe_irq[i] = ((void*)0);
   }
  }
  pci_release_msi(dev);
 }
 if (sc->nfe_msix_pba_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BAR(3),
      sc->nfe_msix_pba_res);
  sc->nfe_msix_pba_res = ((void*)0);
 }
 if (sc->nfe_msix_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BAR(2),
      sc->nfe_msix_res);
  sc->nfe_msix_res = ((void*)0);
 }
 if (sc->nfe_res[0] != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BAR(0),
      sc->nfe_res[0]);
  sc->nfe_res[0] = ((void*)0);
 }

 nfe_free_tx_ring(sc, &sc->txq);
 nfe_free_rx_ring(sc, &sc->rxq);
 nfe_free_jrx_ring(sc, &sc->jrxq);

 if (sc->nfe_parent_tag) {
  bus_dma_tag_destroy(sc->nfe_parent_tag);
  sc->nfe_parent_tag = ((void*)0);
 }

 mtx_destroy(&sc->nfe_mtx);

 return (0);
}
