
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txdesc {int * tx_dmamap; } ;
struct sge_list_data {scalar_t__ sge_rx_paddr; scalar_t__ sge_tx_paddr; int * sge_tx_ring; int * sge_rx_ring; } ;
struct sge_chain_data {int * sge_tag; int * sge_txmbuf_tag; struct sge_txdesc* sge_txdesc; int * sge_rxmbuf_tag; int * sge_rx_spare_map; struct sge_rxdesc* sge_rxdesc; int * sge_tx_tag; int sge_tx_dmamap; int * sge_rx_tag; int sge_rx_dmamap; } ;
struct sge_softc {struct sge_list_data sge_ldata; struct sge_chain_data sge_cdata; } ;
struct sge_rxdesc {int * rx_dmamap; } ;


 int SGE_RX_RING_CNT ;
 int SGE_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
sge_dma_free(struct sge_softc *sc)
{
 struct sge_chain_data *cd;
 struct sge_list_data *ld;
 struct sge_rxdesc *rxd;
 struct sge_txdesc *txd;
 int i;

 cd = &sc->sge_cdata;
 ld = &sc->sge_ldata;

 if (cd->sge_rx_tag != ((void*)0)) {
  if (ld->sge_rx_paddr != 0)
   bus_dmamap_unload(cd->sge_rx_tag, cd->sge_rx_dmamap);
  if (ld->sge_rx_ring != ((void*)0))
   bus_dmamem_free(cd->sge_rx_tag, ld->sge_rx_ring,
       cd->sge_rx_dmamap);
  ld->sge_rx_ring = ((void*)0);
  ld->sge_rx_paddr = 0;
  bus_dma_tag_destroy(cd->sge_rx_tag);
  cd->sge_rx_tag = ((void*)0);
 }

 if (cd->sge_tx_tag != ((void*)0)) {
  if (ld->sge_tx_paddr != 0)
   bus_dmamap_unload(cd->sge_tx_tag, cd->sge_tx_dmamap);
  if (ld->sge_tx_ring != ((void*)0))
   bus_dmamem_free(cd->sge_tx_tag, ld->sge_tx_ring,
       cd->sge_tx_dmamap);
  ld->sge_tx_ring = ((void*)0);
  ld->sge_tx_paddr = 0;
  bus_dma_tag_destroy(cd->sge_tx_tag);
  cd->sge_tx_tag = ((void*)0);
 }

 if (cd->sge_rxmbuf_tag != ((void*)0)) {
  for (i = 0; i < SGE_RX_RING_CNT; i++) {
   rxd = &cd->sge_rxdesc[i];
   if (rxd->rx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(cd->sge_rxmbuf_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (cd->sge_rx_spare_map != ((void*)0)) {
   bus_dmamap_destroy(cd->sge_rxmbuf_tag,
       cd->sge_rx_spare_map);
   cd->sge_rx_spare_map = ((void*)0);
  }
  bus_dma_tag_destroy(cd->sge_rxmbuf_tag);
  cd->sge_rxmbuf_tag = ((void*)0);
 }

 if (cd->sge_txmbuf_tag != ((void*)0)) {
  for (i = 0; i < SGE_TX_RING_CNT; i++) {
   txd = &cd->sge_txdesc[i];
   if (txd->tx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(cd->sge_txmbuf_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(cd->sge_txmbuf_tag);
  cd->sge_txmbuf_tag = ((void*)0);
 }
 if (cd->sge_tag != ((void*)0))
  bus_dma_tag_destroy(cd->sge_tag);
 cd->sge_tag = ((void*)0);
}
