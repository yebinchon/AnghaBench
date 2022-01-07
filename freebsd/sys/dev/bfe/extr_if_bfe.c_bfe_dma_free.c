
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_tx_data {int * bfe_map; } ;
struct bfe_softc {scalar_t__ bfe_tx_dma; scalar_t__ bfe_rx_dma; int * bfe_parent_tag; int * bfe_rxmbuf_tag; int * bfe_rx_sparemap; struct bfe_rx_data* bfe_rx_ring; int * bfe_txmbuf_tag; struct bfe_tx_data* bfe_tx_ring; int * bfe_rx_tag; int * bfe_rx_list; int bfe_rx_map; int * bfe_tx_tag; int * bfe_tx_list; int bfe_tx_map; } ;
struct bfe_rx_data {int * bfe_map; } ;


 int BFE_RX_LIST_CNT ;
 int BFE_TX_LIST_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
bfe_dma_free(struct bfe_softc *sc)
{
 struct bfe_tx_data *td;
 struct bfe_rx_data *rd;
 int i;


 if (sc->bfe_tx_tag != ((void*)0)) {
  if (sc->bfe_tx_dma != 0)
   bus_dmamap_unload(sc->bfe_tx_tag, sc->bfe_tx_map);
  if (sc->bfe_tx_list != ((void*)0))
   bus_dmamem_free(sc->bfe_tx_tag, sc->bfe_tx_list,
       sc->bfe_tx_map);
  sc->bfe_tx_dma = 0;
  sc->bfe_tx_list = ((void*)0);
  bus_dma_tag_destroy(sc->bfe_tx_tag);
  sc->bfe_tx_tag = ((void*)0);
 }


 if (sc->bfe_rx_tag != ((void*)0)) {
  if (sc->bfe_rx_dma != 0)
   bus_dmamap_unload(sc->bfe_rx_tag, sc->bfe_rx_map);
  if (sc->bfe_rx_list != ((void*)0))
   bus_dmamem_free(sc->bfe_rx_tag, sc->bfe_rx_list,
       sc->bfe_rx_map);
  sc->bfe_rx_dma = 0;
  sc->bfe_rx_list = ((void*)0);
  bus_dma_tag_destroy(sc->bfe_rx_tag);
  sc->bfe_rx_tag = ((void*)0);
 }


 if (sc->bfe_txmbuf_tag != ((void*)0)) {
  for (i = 0; i < BFE_TX_LIST_CNT; i++) {
   td = &sc->bfe_tx_ring[i];
   if (td->bfe_map != ((void*)0)) {
    bus_dmamap_destroy(sc->bfe_txmbuf_tag,
        td->bfe_map);
    td->bfe_map = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->bfe_txmbuf_tag);
  sc->bfe_txmbuf_tag = ((void*)0);
 }


 if (sc->bfe_rxmbuf_tag != ((void*)0)) {
  for (i = 0; i < BFE_RX_LIST_CNT; i++) {
   rd = &sc->bfe_rx_ring[i];
   if (rd->bfe_map != ((void*)0)) {
    bus_dmamap_destroy(sc->bfe_rxmbuf_tag,
        rd->bfe_map);
    rd->bfe_map = ((void*)0);
   }
  }
  if (sc->bfe_rx_sparemap != ((void*)0)) {
   bus_dmamap_destroy(sc->bfe_rxmbuf_tag,
       sc->bfe_rx_sparemap);
   sc->bfe_rx_sparemap = ((void*)0);
  }
  bus_dma_tag_destroy(sc->bfe_rxmbuf_tag);
  sc->bfe_rxmbuf_tag = ((void*)0);
 }

 if (sc->bfe_parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->bfe_parent_tag);
  sc->bfe_parent_tag = ((void*)0);
 }
}
