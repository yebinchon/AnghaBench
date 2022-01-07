
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vte_txdesc {int * tx_dmamap; } ;
struct TYPE_2__ {scalar_t__ vte_tx_ring_paddr; scalar_t__ vte_rx_ring_paddr; int * vte_parent_tag; int * vte_buffer_tag; int * vte_rx_ring_tag; int * vte_rx_ring; int vte_rx_ring_map; int * vte_tx_ring_tag; int * vte_tx_ring; int vte_tx_ring_map; int * vte_rx_tag; int * vte_rx_sparemap; struct vte_rxdesc* vte_rxdesc; int * vte_tx_tag; struct vte_txdesc* vte_txdesc; } ;
struct vte_softc {TYPE_1__ vte_cdata; } ;
struct vte_rxdesc {int * rx_dmamap; } ;


 int VTE_RX_RING_CNT ;
 int VTE_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
vte_dma_free(struct vte_softc *sc)
{
 struct vte_txdesc *txd;
 struct vte_rxdesc *rxd;
 int i;


 if (sc->vte_cdata.vte_tx_tag != ((void*)0)) {
  for (i = 0; i < VTE_TX_RING_CNT; i++) {
   txd = &sc->vte_cdata.vte_txdesc[i];
   if (txd->tx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->vte_cdata.vte_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->vte_cdata.vte_tx_tag);
  sc->vte_cdata.vte_tx_tag = ((void*)0);
 }

 if (sc->vte_cdata.vte_rx_tag != ((void*)0)) {
  for (i = 0; i < VTE_RX_RING_CNT; i++) {
   rxd = &sc->vte_cdata.vte_rxdesc[i];
   if (rxd->rx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->vte_cdata.vte_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->vte_cdata.vte_rx_sparemap != ((void*)0)) {
   bus_dmamap_destroy(sc->vte_cdata.vte_rx_tag,
       sc->vte_cdata.vte_rx_sparemap);
   sc->vte_cdata.vte_rx_sparemap = ((void*)0);
  }
  bus_dma_tag_destroy(sc->vte_cdata.vte_rx_tag);
  sc->vte_cdata.vte_rx_tag = ((void*)0);
 }

 if (sc->vte_cdata.vte_tx_ring_tag != ((void*)0)) {
  if (sc->vte_cdata.vte_tx_ring_paddr != 0)
   bus_dmamap_unload(sc->vte_cdata.vte_tx_ring_tag,
       sc->vte_cdata.vte_tx_ring_map);
  if (sc->vte_cdata.vte_tx_ring != ((void*)0))
   bus_dmamem_free(sc->vte_cdata.vte_tx_ring_tag,
       sc->vte_cdata.vte_tx_ring,
       sc->vte_cdata.vte_tx_ring_map);
  sc->vte_cdata.vte_tx_ring = ((void*)0);
  sc->vte_cdata.vte_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->vte_cdata.vte_tx_ring_tag);
  sc->vte_cdata.vte_tx_ring_tag = ((void*)0);
 }

 if (sc->vte_cdata.vte_rx_ring_tag != ((void*)0)) {
  if (sc->vte_cdata.vte_rx_ring_paddr != 0)
   bus_dmamap_unload(sc->vte_cdata.vte_rx_ring_tag,
       sc->vte_cdata.vte_rx_ring_map);
  if (sc->vte_cdata.vte_rx_ring != ((void*)0))
   bus_dmamem_free(sc->vte_cdata.vte_rx_ring_tag,
       sc->vte_cdata.vte_rx_ring,
       sc->vte_cdata.vte_rx_ring_map);
  sc->vte_cdata.vte_rx_ring = ((void*)0);
  sc->vte_cdata.vte_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->vte_cdata.vte_rx_ring_tag);
  sc->vte_cdata.vte_rx_ring_tag = ((void*)0);
 }
 if (sc->vte_cdata.vte_buffer_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->vte_cdata.vte_buffer_tag);
  sc->vte_cdata.vte_buffer_tag = ((void*)0);
 }
 if (sc->vte_cdata.vte_parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->vte_cdata.vte_parent_tag);
  sc->vte_cdata.vte_parent_tag = ((void*)0);
 }
}
