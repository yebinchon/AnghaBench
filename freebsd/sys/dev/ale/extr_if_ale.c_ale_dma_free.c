
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ale_txdesc {int * tx_dmamap; } ;
struct TYPE_3__ {scalar_t__ ale_tx_ring_paddr; scalar_t__ ale_tx_cmb_paddr; int * ale_parent_tag; int * ale_buffer_tag; int * ale_tx_cmb_tag; int * ale_tx_cmb; int ale_tx_cmb_map; TYPE_2__* ale_rx_page; int * ale_tx_ring_tag; int * ale_tx_ring; int ale_tx_ring_map; int * ale_tx_tag; struct ale_txdesc* ale_txdesc; } ;
struct ale_softc {TYPE_1__ ale_cdata; } ;
struct TYPE_4__ {scalar_t__ page_paddr; scalar_t__ cmb_paddr; int * cmb_tag; int * cmb_addr; int cmb_map; int * page_tag; int * page_addr; int page_map; } ;


 int ALE_RX_PAGES ;
 int ALE_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
ale_dma_free(struct ale_softc *sc)
{
 struct ale_txdesc *txd;
 int i;


 if (sc->ale_cdata.ale_tx_tag != ((void*)0)) {
  for (i = 0; i < ALE_TX_RING_CNT; i++) {
   txd = &sc->ale_cdata.ale_txdesc[i];
   if (txd->tx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->ale_cdata.ale_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->ale_cdata.ale_tx_tag);
  sc->ale_cdata.ale_tx_tag = ((void*)0);
 }

 if (sc->ale_cdata.ale_tx_ring_tag != ((void*)0)) {
  if (sc->ale_cdata.ale_tx_ring_paddr != 0)
   bus_dmamap_unload(sc->ale_cdata.ale_tx_ring_tag,
       sc->ale_cdata.ale_tx_ring_map);
  if (sc->ale_cdata.ale_tx_ring != ((void*)0))
   bus_dmamem_free(sc->ale_cdata.ale_tx_ring_tag,
       sc->ale_cdata.ale_tx_ring,
       sc->ale_cdata.ale_tx_ring_map);
  sc->ale_cdata.ale_tx_ring_paddr = 0;
  sc->ale_cdata.ale_tx_ring = ((void*)0);
  bus_dma_tag_destroy(sc->ale_cdata.ale_tx_ring_tag);
  sc->ale_cdata.ale_tx_ring_tag = ((void*)0);
 }

 for (i = 0; i < ALE_RX_PAGES; i++) {
  if (sc->ale_cdata.ale_rx_page[i].page_tag != ((void*)0)) {
   if (sc->ale_cdata.ale_rx_page[i].page_paddr != 0)
    bus_dmamap_unload(
        sc->ale_cdata.ale_rx_page[i].page_tag,
        sc->ale_cdata.ale_rx_page[i].page_map);
   if (sc->ale_cdata.ale_rx_page[i].page_addr != ((void*)0))
    bus_dmamem_free(
        sc->ale_cdata.ale_rx_page[i].page_tag,
        sc->ale_cdata.ale_rx_page[i].page_addr,
        sc->ale_cdata.ale_rx_page[i].page_map);
   sc->ale_cdata.ale_rx_page[i].page_paddr = 0;
   sc->ale_cdata.ale_rx_page[i].page_addr = ((void*)0);
   bus_dma_tag_destroy(
       sc->ale_cdata.ale_rx_page[i].page_tag);
   sc->ale_cdata.ale_rx_page[i].page_tag = ((void*)0);
  }
 }

 for (i = 0; i < ALE_RX_PAGES; i++) {
  if (sc->ale_cdata.ale_rx_page[i].cmb_tag != ((void*)0)) {
   if (sc->ale_cdata.ale_rx_page[i].cmb_paddr != 0)
    bus_dmamap_unload(
        sc->ale_cdata.ale_rx_page[i].cmb_tag,
        sc->ale_cdata.ale_rx_page[i].cmb_map);
   if (sc->ale_cdata.ale_rx_page[i].cmb_addr != ((void*)0))
    bus_dmamem_free(
        sc->ale_cdata.ale_rx_page[i].cmb_tag,
        sc->ale_cdata.ale_rx_page[i].cmb_addr,
        sc->ale_cdata.ale_rx_page[i].cmb_map);
   sc->ale_cdata.ale_rx_page[i].cmb_paddr = 0;
   sc->ale_cdata.ale_rx_page[i].cmb_addr = ((void*)0);
   bus_dma_tag_destroy(
       sc->ale_cdata.ale_rx_page[i].cmb_tag);
   sc->ale_cdata.ale_rx_page[i].cmb_tag = ((void*)0);
  }
 }

 if (sc->ale_cdata.ale_tx_cmb_tag != ((void*)0)) {
  if (sc->ale_cdata.ale_tx_cmb_paddr != 0)
   bus_dmamap_unload(sc->ale_cdata.ale_tx_cmb_tag,
       sc->ale_cdata.ale_tx_cmb_map);
  if (sc->ale_cdata.ale_tx_cmb != ((void*)0))
   bus_dmamem_free(sc->ale_cdata.ale_tx_cmb_tag,
       sc->ale_cdata.ale_tx_cmb,
       sc->ale_cdata.ale_tx_cmb_map);
  sc->ale_cdata.ale_tx_cmb_paddr = 0;
  sc->ale_cdata.ale_tx_cmb = ((void*)0);
  bus_dma_tag_destroy(sc->ale_cdata.ale_tx_cmb_tag);
  sc->ale_cdata.ale_tx_cmb_tag = ((void*)0);
 }
 if (sc->ale_cdata.ale_buffer_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->ale_cdata.ale_buffer_tag);
  sc->ale_cdata.ale_buffer_tag = ((void*)0);
 }
 if (sc->ale_cdata.ale_parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->ale_cdata.ale_parent_tag);
  sc->ale_cdata.ale_parent_tag = ((void*)0);
 }
}
