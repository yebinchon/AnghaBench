
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msk_txdesc {int * tx_dmamap; } ;
struct msk_rxdesc {int * rx_dmamap; } ;
struct TYPE_4__ {int * msk_parent_tag; int * msk_rx_tag; int * msk_rx_sparemap; struct msk_rxdesc* msk_rxdesc; int * msk_tx_tag; struct msk_txdesc* msk_txdesc; int * msk_rx_ring_tag; int msk_rx_ring_map; int * msk_tx_ring_tag; int msk_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ msk_rx_ring_paddr; int * msk_rx_ring; scalar_t__ msk_tx_ring_paddr; int * msk_tx_ring; } ;
struct msk_if_softc {TYPE_2__ msk_cdata; TYPE_1__ msk_rdata; } ;


 int MSK_RX_RING_CNT ;
 int MSK_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
msk_txrx_dma_free(struct msk_if_softc *sc_if)
{
 struct msk_txdesc *txd;
 struct msk_rxdesc *rxd;
 int i;


 if (sc_if->msk_cdata.msk_tx_ring_tag) {
  if (sc_if->msk_rdata.msk_tx_ring_paddr)
   bus_dmamap_unload(sc_if->msk_cdata.msk_tx_ring_tag,
       sc_if->msk_cdata.msk_tx_ring_map);
  if (sc_if->msk_rdata.msk_tx_ring)
   bus_dmamem_free(sc_if->msk_cdata.msk_tx_ring_tag,
       sc_if->msk_rdata.msk_tx_ring,
       sc_if->msk_cdata.msk_tx_ring_map);
  sc_if->msk_rdata.msk_tx_ring = ((void*)0);
  sc_if->msk_rdata.msk_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc_if->msk_cdata.msk_tx_ring_tag);
  sc_if->msk_cdata.msk_tx_ring_tag = ((void*)0);
 }

 if (sc_if->msk_cdata.msk_rx_ring_tag) {
  if (sc_if->msk_rdata.msk_rx_ring_paddr)
   bus_dmamap_unload(sc_if->msk_cdata.msk_rx_ring_tag,
       sc_if->msk_cdata.msk_rx_ring_map);
  if (sc_if->msk_rdata.msk_rx_ring)
   bus_dmamem_free(sc_if->msk_cdata.msk_rx_ring_tag,
       sc_if->msk_rdata.msk_rx_ring,
       sc_if->msk_cdata.msk_rx_ring_map);
  sc_if->msk_rdata.msk_rx_ring = ((void*)0);
  sc_if->msk_rdata.msk_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc_if->msk_cdata.msk_rx_ring_tag);
  sc_if->msk_cdata.msk_rx_ring_tag = ((void*)0);
 }

 if (sc_if->msk_cdata.msk_tx_tag) {
  for (i = 0; i < MSK_TX_RING_CNT; i++) {
   txd = &sc_if->msk_cdata.msk_txdesc[i];
   if (txd->tx_dmamap) {
    bus_dmamap_destroy(sc_if->msk_cdata.msk_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc_if->msk_cdata.msk_tx_tag);
  sc_if->msk_cdata.msk_tx_tag = ((void*)0);
 }

 if (sc_if->msk_cdata.msk_rx_tag) {
  for (i = 0; i < MSK_RX_RING_CNT; i++) {
   rxd = &sc_if->msk_cdata.msk_rxdesc[i];
   if (rxd->rx_dmamap) {
    bus_dmamap_destroy(sc_if->msk_cdata.msk_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc_if->msk_cdata.msk_rx_sparemap) {
   bus_dmamap_destroy(sc_if->msk_cdata.msk_rx_tag,
       sc_if->msk_cdata.msk_rx_sparemap);
   sc_if->msk_cdata.msk_rx_sparemap = 0;
  }
  bus_dma_tag_destroy(sc_if->msk_cdata.msk_rx_tag);
  sc_if->msk_cdata.msk_rx_tag = ((void*)0);
 }
 if (sc_if->msk_cdata.msk_parent_tag) {
  bus_dma_tag_destroy(sc_if->msk_cdata.msk_parent_tag);
  sc_if->msk_cdata.msk_parent_tag = ((void*)0);
 }
}
