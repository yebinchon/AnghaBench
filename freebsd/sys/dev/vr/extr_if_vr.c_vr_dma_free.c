
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vr_txdesc {int * tx_dmamap; } ;
struct TYPE_4__ {int * vr_parent_tag; int * vr_rx_tag; int * vr_rx_sparemap; struct vr_rxdesc* vr_rxdesc; int * vr_tx_tag; struct vr_txdesc* vr_txdesc; int * vr_rx_ring_tag; int vr_rx_ring_map; int * vr_tx_ring_tag; int vr_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ vr_rx_ring_paddr; int * vr_rx_ring; scalar_t__ vr_tx_ring_paddr; int * vr_tx_ring; } ;
struct vr_softc {TYPE_2__ vr_cdata; TYPE_1__ vr_rdata; } ;
struct vr_rxdesc {int * rx_dmamap; } ;


 int VR_RX_RING_CNT ;
 int VR_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
vr_dma_free(struct vr_softc *sc)
{
 struct vr_txdesc *txd;
 struct vr_rxdesc *rxd;
 int i;


 if (sc->vr_cdata.vr_tx_ring_tag) {
  if (sc->vr_rdata.vr_tx_ring_paddr)
   bus_dmamap_unload(sc->vr_cdata.vr_tx_ring_tag,
       sc->vr_cdata.vr_tx_ring_map);
  if (sc->vr_rdata.vr_tx_ring)
   bus_dmamem_free(sc->vr_cdata.vr_tx_ring_tag,
       sc->vr_rdata.vr_tx_ring,
       sc->vr_cdata.vr_tx_ring_map);
  sc->vr_rdata.vr_tx_ring = ((void*)0);
  sc->vr_rdata.vr_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->vr_cdata.vr_tx_ring_tag);
  sc->vr_cdata.vr_tx_ring_tag = ((void*)0);
 }

 if (sc->vr_cdata.vr_rx_ring_tag) {
  if (sc->vr_rdata.vr_rx_ring_paddr)
   bus_dmamap_unload(sc->vr_cdata.vr_rx_ring_tag,
       sc->vr_cdata.vr_rx_ring_map);
  if (sc->vr_rdata.vr_rx_ring)
   bus_dmamem_free(sc->vr_cdata.vr_rx_ring_tag,
       sc->vr_rdata.vr_rx_ring,
       sc->vr_cdata.vr_rx_ring_map);
  sc->vr_rdata.vr_rx_ring = ((void*)0);
  sc->vr_rdata.vr_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->vr_cdata.vr_rx_ring_tag);
  sc->vr_cdata.vr_rx_ring_tag = ((void*)0);
 }

 if (sc->vr_cdata.vr_tx_tag) {
  for (i = 0; i < VR_TX_RING_CNT; i++) {
   txd = &sc->vr_cdata.vr_txdesc[i];
   if (txd->tx_dmamap) {
    bus_dmamap_destroy(sc->vr_cdata.vr_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->vr_cdata.vr_tx_tag);
  sc->vr_cdata.vr_tx_tag = ((void*)0);
 }

 if (sc->vr_cdata.vr_rx_tag) {
  for (i = 0; i < VR_RX_RING_CNT; i++) {
   rxd = &sc->vr_cdata.vr_rxdesc[i];
   if (rxd->rx_dmamap) {
    bus_dmamap_destroy(sc->vr_cdata.vr_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->vr_cdata.vr_rx_sparemap) {
   bus_dmamap_destroy(sc->vr_cdata.vr_rx_tag,
       sc->vr_cdata.vr_rx_sparemap);
   sc->vr_cdata.vr_rx_sparemap = 0;
  }
  bus_dma_tag_destroy(sc->vr_cdata.vr_rx_tag);
  sc->vr_cdata.vr_rx_tag = ((void*)0);
 }

 if (sc->vr_cdata.vr_parent_tag) {
  bus_dma_tag_destroy(sc->vr_cdata.vr_parent_tag);
  sc->vr_cdata.vr_parent_tag = ((void*)0);
 }
}
