
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nge_txdesc {int * tx_dmamap; } ;
struct TYPE_4__ {int * nge_parent_tag; int * nge_rx_tag; int * nge_rx_sparemap; struct nge_rxdesc* nge_rxdesc; int * nge_tx_tag; struct nge_txdesc* nge_txdesc; int * nge_rx_ring_tag; int nge_rx_ring_map; int * nge_tx_ring_tag; int nge_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ nge_rx_ring_paddr; int * nge_rx_ring; scalar_t__ nge_tx_ring_paddr; int * nge_tx_ring; } ;
struct nge_softc {TYPE_2__ nge_cdata; TYPE_1__ nge_rdata; } ;
struct nge_rxdesc {int * rx_dmamap; } ;


 int NGE_RX_RING_CNT ;
 int NGE_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
nge_dma_free(struct nge_softc *sc)
{
 struct nge_txdesc *txd;
 struct nge_rxdesc *rxd;
 int i;


 if (sc->nge_cdata.nge_tx_ring_tag) {
  if (sc->nge_rdata.nge_tx_ring_paddr)
   bus_dmamap_unload(sc->nge_cdata.nge_tx_ring_tag,
       sc->nge_cdata.nge_tx_ring_map);
  if (sc->nge_rdata.nge_tx_ring)
   bus_dmamem_free(sc->nge_cdata.nge_tx_ring_tag,
       sc->nge_rdata.nge_tx_ring,
       sc->nge_cdata.nge_tx_ring_map);
  sc->nge_rdata.nge_tx_ring = ((void*)0);
  sc->nge_rdata.nge_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->nge_cdata.nge_tx_ring_tag);
  sc->nge_cdata.nge_tx_ring_tag = ((void*)0);
 }

 if (sc->nge_cdata.nge_rx_ring_tag) {
  if (sc->nge_rdata.nge_rx_ring_paddr)
   bus_dmamap_unload(sc->nge_cdata.nge_rx_ring_tag,
       sc->nge_cdata.nge_rx_ring_map);
  if (sc->nge_rdata.nge_rx_ring)
   bus_dmamem_free(sc->nge_cdata.nge_rx_ring_tag,
       sc->nge_rdata.nge_rx_ring,
       sc->nge_cdata.nge_rx_ring_map);
  sc->nge_rdata.nge_rx_ring = ((void*)0);
  sc->nge_rdata.nge_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->nge_cdata.nge_rx_ring_tag);
  sc->nge_cdata.nge_rx_ring_tag = ((void*)0);
 }

 if (sc->nge_cdata.nge_tx_tag) {
  for (i = 0; i < NGE_TX_RING_CNT; i++) {
   txd = &sc->nge_cdata.nge_txdesc[i];
   if (txd->tx_dmamap) {
    bus_dmamap_destroy(sc->nge_cdata.nge_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->nge_cdata.nge_tx_tag);
  sc->nge_cdata.nge_tx_tag = ((void*)0);
 }

 if (sc->nge_cdata.nge_rx_tag) {
  for (i = 0; i < NGE_RX_RING_CNT; i++) {
   rxd = &sc->nge_cdata.nge_rxdesc[i];
   if (rxd->rx_dmamap) {
    bus_dmamap_destroy(sc->nge_cdata.nge_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->nge_cdata.nge_rx_sparemap) {
   bus_dmamap_destroy(sc->nge_cdata.nge_rx_tag,
       sc->nge_cdata.nge_rx_sparemap);
   sc->nge_cdata.nge_rx_sparemap = 0;
  }
  bus_dma_tag_destroy(sc->nge_cdata.nge_rx_tag);
  sc->nge_cdata.nge_rx_tag = ((void*)0);
 }

 if (sc->nge_cdata.nge_parent_tag) {
  bus_dma_tag_destroy(sc->nge_cdata.nge_parent_tag);
  sc->nge_cdata.nge_parent_tag = ((void*)0);
 }
}
