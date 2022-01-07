
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ste_parent_tag; int * ste_rx_list_tag; int ste_rx_list_map; int * ste_tx_list_tag; int ste_tx_list_map; int * ste_rx_tag; int * ste_rx_sparemap; struct ste_chain_onefrag* ste_rx_chain; int * ste_tx_tag; struct ste_chain* ste_tx_chain; } ;
struct TYPE_3__ {scalar_t__ ste_tx_list_paddr; scalar_t__ ste_rx_list_paddr; int * ste_rx_list; int * ste_tx_list; } ;
struct ste_softc {TYPE_2__ ste_cdata; TYPE_1__ ste_ldata; } ;
struct ste_chain_onefrag {int * ste_map; } ;
struct ste_chain {int * ste_map; } ;


 int STE_RX_LIST_CNT ;
 int STE_TX_LIST_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
ste_dma_free(struct ste_softc *sc)
{
 struct ste_chain *txc;
 struct ste_chain_onefrag *rxc;
 int i;


 if (sc->ste_cdata.ste_tx_tag != ((void*)0)) {
  for (i = 0; i < STE_TX_LIST_CNT; i++) {
   txc = &sc->ste_cdata.ste_tx_chain[i];
   if (txc->ste_map != ((void*)0)) {
    bus_dmamap_destroy(sc->ste_cdata.ste_tx_tag,
        txc->ste_map);
    txc->ste_map = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->ste_cdata.ste_tx_tag);
  sc->ste_cdata.ste_tx_tag = ((void*)0);
 }

 if (sc->ste_cdata.ste_rx_tag != ((void*)0)) {
  for (i = 0; i < STE_RX_LIST_CNT; i++) {
   rxc = &sc->ste_cdata.ste_rx_chain[i];
   if (rxc->ste_map != ((void*)0)) {
    bus_dmamap_destroy(sc->ste_cdata.ste_rx_tag,
        rxc->ste_map);
    rxc->ste_map = ((void*)0);
   }
  }
  if (sc->ste_cdata.ste_rx_sparemap != ((void*)0)) {
   bus_dmamap_destroy(sc->ste_cdata.ste_rx_tag,
       sc->ste_cdata.ste_rx_sparemap);
   sc->ste_cdata.ste_rx_sparemap = ((void*)0);
  }
  bus_dma_tag_destroy(sc->ste_cdata.ste_rx_tag);
  sc->ste_cdata.ste_rx_tag = ((void*)0);
 }

 if (sc->ste_cdata.ste_tx_list_tag != ((void*)0)) {
  if (sc->ste_ldata.ste_tx_list_paddr != 0)
   bus_dmamap_unload(sc->ste_cdata.ste_tx_list_tag,
       sc->ste_cdata.ste_tx_list_map);
  if (sc->ste_ldata.ste_tx_list != ((void*)0))
   bus_dmamem_free(sc->ste_cdata.ste_tx_list_tag,
       sc->ste_ldata.ste_tx_list,
       sc->ste_cdata.ste_tx_list_map);
  sc->ste_ldata.ste_tx_list = ((void*)0);
  sc->ste_ldata.ste_tx_list_paddr = 0;
  bus_dma_tag_destroy(sc->ste_cdata.ste_tx_list_tag);
  sc->ste_cdata.ste_tx_list_tag = ((void*)0);
 }

 if (sc->ste_cdata.ste_rx_list_tag != ((void*)0)) {
  if (sc->ste_ldata.ste_rx_list_paddr != 0)
   bus_dmamap_unload(sc->ste_cdata.ste_rx_list_tag,
       sc->ste_cdata.ste_rx_list_map);
  if (sc->ste_ldata.ste_rx_list != ((void*)0))
   bus_dmamem_free(sc->ste_cdata.ste_rx_list_tag,
       sc->ste_ldata.ste_rx_list,
       sc->ste_cdata.ste_rx_list_map);
  sc->ste_ldata.ste_rx_list = ((void*)0);
  sc->ste_ldata.ste_rx_list_paddr = 0;
  bus_dma_tag_destroy(sc->ste_cdata.ste_rx_list_tag);
  sc->ste_cdata.ste_rx_list_tag = ((void*)0);
 }
 if (sc->ste_cdata.ste_parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->ste_cdata.ste_parent_tag);
  sc->ste_cdata.ste_parent_tag = ((void*)0);
 }
}
