
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vge_txdesc {int * tx_dmamap; } ;
struct TYPE_4__ {int * vge_ring_tag; int * vge_buffer_tag; int * vge_rx_tag; int * vge_rx_sparemap; struct vge_rxdesc* vge_rxdesc; int * vge_tx_tag; struct vge_txdesc* vge_txdesc; int * vge_rx_ring_tag; int vge_rx_ring_map; int * vge_tx_ring_tag; int vge_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ vge_rx_ring_paddr; int * vge_rx_ring; scalar_t__ vge_tx_ring_paddr; int * vge_tx_ring; } ;
struct vge_softc {TYPE_2__ vge_cdata; TYPE_1__ vge_rdata; } ;
struct vge_rxdesc {int * rx_dmamap; } ;


 int VGE_RX_DESC_CNT ;
 int VGE_TX_DESC_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
vge_dma_free(struct vge_softc *sc)
{
 struct vge_txdesc *txd;
 struct vge_rxdesc *rxd;
 int i;


 if (sc->vge_cdata.vge_tx_ring_tag != ((void*)0)) {
  if (sc->vge_rdata.vge_tx_ring_paddr)
   bus_dmamap_unload(sc->vge_cdata.vge_tx_ring_tag,
       sc->vge_cdata.vge_tx_ring_map);
  if (sc->vge_rdata.vge_tx_ring)
   bus_dmamem_free(sc->vge_cdata.vge_tx_ring_tag,
       sc->vge_rdata.vge_tx_ring,
       sc->vge_cdata.vge_tx_ring_map);
  sc->vge_rdata.vge_tx_ring = ((void*)0);
  sc->vge_rdata.vge_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->vge_cdata.vge_tx_ring_tag);
  sc->vge_cdata.vge_tx_ring_tag = ((void*)0);
 }

 if (sc->vge_cdata.vge_rx_ring_tag != ((void*)0)) {
  if (sc->vge_rdata.vge_rx_ring_paddr)
   bus_dmamap_unload(sc->vge_cdata.vge_rx_ring_tag,
       sc->vge_cdata.vge_rx_ring_map);
  if (sc->vge_rdata.vge_rx_ring)
   bus_dmamem_free(sc->vge_cdata.vge_rx_ring_tag,
       sc->vge_rdata.vge_rx_ring,
       sc->vge_cdata.vge_rx_ring_map);
  sc->vge_rdata.vge_rx_ring = ((void*)0);
  sc->vge_rdata.vge_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->vge_cdata.vge_rx_ring_tag);
  sc->vge_cdata.vge_rx_ring_tag = ((void*)0);
 }

 if (sc->vge_cdata.vge_tx_tag != ((void*)0)) {
  for (i = 0; i < VGE_TX_DESC_CNT; i++) {
   txd = &sc->vge_cdata.vge_txdesc[i];
   if (txd->tx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->vge_cdata.vge_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->vge_cdata.vge_tx_tag);
  sc->vge_cdata.vge_tx_tag = ((void*)0);
 }

 if (sc->vge_cdata.vge_rx_tag != ((void*)0)) {
  for (i = 0; i < VGE_RX_DESC_CNT; i++) {
   rxd = &sc->vge_cdata.vge_rxdesc[i];
   if (rxd->rx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->vge_cdata.vge_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->vge_cdata.vge_rx_sparemap != ((void*)0)) {
   bus_dmamap_destroy(sc->vge_cdata.vge_rx_tag,
       sc->vge_cdata.vge_rx_sparemap);
   sc->vge_cdata.vge_rx_sparemap = ((void*)0);
  }
  bus_dma_tag_destroy(sc->vge_cdata.vge_rx_tag);
  sc->vge_cdata.vge_rx_tag = ((void*)0);
 }

 if (sc->vge_cdata.vge_buffer_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->vge_cdata.vge_buffer_tag);
  sc->vge_cdata.vge_buffer_tag = ((void*)0);
 }
 if (sc->vge_cdata.vge_ring_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->vge_cdata.vge_ring_tag);
  sc->vge_cdata.vge_ring_tag = ((void*)0);
 }
}
