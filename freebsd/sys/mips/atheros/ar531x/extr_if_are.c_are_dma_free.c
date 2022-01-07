
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct are_txdesc {int * tx_dmamap; } ;
struct TYPE_4__ {int * are_parent_tag; int * are_rx_tag; int * are_rx_sparemap; struct are_rxdesc* are_rxdesc; int * are_tx_tag; struct are_txdesc* are_txdesc; int * are_rx_ring_tag; int are_rx_ring_map; int * are_tx_ring_tag; int are_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ are_rx_ring_paddr; int * are_rx_ring; scalar_t__ are_tx_ring_paddr; int * are_tx_ring; } ;
struct are_softc {TYPE_2__ are_cdata; TYPE_1__ are_rdata; } ;
struct are_rxdesc {int * rx_dmamap; } ;


 int ARE_RX_RING_CNT ;
 int ARE_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
are_dma_free(struct are_softc *sc)
{
 struct are_txdesc *txd;
 struct are_rxdesc *rxd;
 int i;


 if (sc->are_cdata.are_tx_ring_tag) {
  if (sc->are_rdata.are_tx_ring_paddr)
   bus_dmamap_unload(sc->are_cdata.are_tx_ring_tag,
       sc->are_cdata.are_tx_ring_map);
  if (sc->are_rdata.are_tx_ring)
   bus_dmamem_free(sc->are_cdata.are_tx_ring_tag,
       sc->are_rdata.are_tx_ring,
       sc->are_cdata.are_tx_ring_map);
  sc->are_rdata.are_tx_ring = ((void*)0);
  sc->are_rdata.are_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->are_cdata.are_tx_ring_tag);
  sc->are_cdata.are_tx_ring_tag = ((void*)0);
 }

 if (sc->are_cdata.are_rx_ring_tag) {
  if (sc->are_rdata.are_rx_ring_paddr)
   bus_dmamap_unload(sc->are_cdata.are_rx_ring_tag,
       sc->are_cdata.are_rx_ring_map);
  if (sc->are_rdata.are_rx_ring)
   bus_dmamem_free(sc->are_cdata.are_rx_ring_tag,
       sc->are_rdata.are_rx_ring,
       sc->are_cdata.are_rx_ring_map);
  sc->are_rdata.are_rx_ring = ((void*)0);
  sc->are_rdata.are_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->are_cdata.are_rx_ring_tag);
  sc->are_cdata.are_rx_ring_tag = ((void*)0);
 }

 if (sc->are_cdata.are_tx_tag) {
  for (i = 0; i < ARE_TX_RING_CNT; i++) {
   txd = &sc->are_cdata.are_txdesc[i];
   if (txd->tx_dmamap) {
    bus_dmamap_destroy(sc->are_cdata.are_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->are_cdata.are_tx_tag);
  sc->are_cdata.are_tx_tag = ((void*)0);
 }

 if (sc->are_cdata.are_rx_tag) {
  for (i = 0; i < ARE_RX_RING_CNT; i++) {
   rxd = &sc->are_cdata.are_rxdesc[i];
   if (rxd->rx_dmamap) {
    bus_dmamap_destroy(sc->are_cdata.are_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->are_cdata.are_rx_sparemap) {
   bus_dmamap_destroy(sc->are_cdata.are_rx_tag,
       sc->are_cdata.are_rx_sparemap);
   sc->are_cdata.are_rx_sparemap = 0;
  }
  bus_dma_tag_destroy(sc->are_cdata.are_rx_tag);
  sc->are_cdata.are_rx_tag = ((void*)0);
 }

 if (sc->are_cdata.are_parent_tag) {
  bus_dma_tag_destroy(sc->are_cdata.are_parent_tag);
  sc->are_cdata.are_parent_tag = ((void*)0);
 }
}
