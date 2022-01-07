
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xl_tx_tag; int xl_tx_dmamap; int xl_tx_list; scalar_t__ xl_rx_tag; int xl_rx_dmamap; int xl_rx_list; } ;
struct xl_softc {int xl_flags; int xl_mtx; TYPE_1__ xl_ldata; scalar_t__ xl_mtag; int xl_tmpmap; int * xl_res; int * xl_fres; int * xl_irq; scalar_t__ xl_intrhand; int ifmedia; scalar_t__ xl_miibus; int xl_tick_callout; int xl_task; struct ifnet* xl_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int XL_FLAG_USE_MMIO ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_PCI_FUNCMEM ;
 int XL_PCI_LOIO ;
 int XL_PCI_LOMEM ;
 int XL_UNLOCK (struct xl_softc*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,int ) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,int ,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int,int,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct xl_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;
 int xl_stop (struct xl_softc*) ;

__attribute__((used)) static int
xl_detach(device_t dev)
{
 struct xl_softc *sc;
 struct ifnet *ifp;
 int rid, res;

 sc = device_get_softc(dev);
 ifp = sc->xl_ifp;

 KASSERT(mtx_initialized(&sc->xl_mtx), ("xl mutex not initialized"));






 if (sc->xl_flags & XL_FLAG_USE_MMIO) {
  rid = XL_PCI_LOMEM;
  res = SYS_RES_MEMORY;
 } else {
  rid = XL_PCI_LOIO;
  res = SYS_RES_IOPORT;
 }


 if (device_is_attached(dev)) {
  XL_LOCK(sc);
  xl_stop(sc);
  XL_UNLOCK(sc);
  taskqueue_drain(taskqueue_swi, &sc->xl_task);
  callout_drain(&sc->xl_tick_callout);
  ether_ifdetach(ifp);
 }
 if (sc->xl_miibus)
  device_delete_child(dev, sc->xl_miibus);
 bus_generic_detach(dev);
 ifmedia_removeall(&sc->ifmedia);

 if (sc->xl_intrhand)
  bus_teardown_intr(dev, sc->xl_irq, sc->xl_intrhand);
 if (sc->xl_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->xl_irq);
 if (sc->xl_fres != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      XL_PCI_FUNCMEM, sc->xl_fres);
 if (sc->xl_res)
  bus_release_resource(dev, res, rid, sc->xl_res);

 if (ifp)
  if_free(ifp);

 if (sc->xl_mtag) {
  bus_dmamap_destroy(sc->xl_mtag, sc->xl_tmpmap);
  bus_dma_tag_destroy(sc->xl_mtag);
 }
 if (sc->xl_ldata.xl_rx_tag) {
  bus_dmamap_unload(sc->xl_ldata.xl_rx_tag,
      sc->xl_ldata.xl_rx_dmamap);
  bus_dmamem_free(sc->xl_ldata.xl_rx_tag, sc->xl_ldata.xl_rx_list,
      sc->xl_ldata.xl_rx_dmamap);
  bus_dma_tag_destroy(sc->xl_ldata.xl_rx_tag);
 }
 if (sc->xl_ldata.xl_tx_tag) {
  bus_dmamap_unload(sc->xl_ldata.xl_tx_tag,
      sc->xl_ldata.xl_tx_dmamap);
  bus_dmamem_free(sc->xl_ldata.xl_tx_tag, sc->xl_ldata.xl_tx_list,
      sc->xl_ldata.xl_tx_dmamap);
  bus_dma_tag_destroy(sc->xl_ldata.xl_tx_tag);
 }

 mtx_destroy(&sc->xl_mtx);

 return (0);
}
