
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct age_txdesc {int * tx_dmamap; } ;
struct TYPE_4__ {int * age_parent_tag; int * age_buffer_tag; int * age_smb_block_tag; int age_smb_block_map; int * age_cmb_block_tag; int age_cmb_block_map; int * age_rr_ring_tag; int age_rr_ring_map; int * age_rx_ring_tag; int age_rx_ring_map; int * age_tx_ring_tag; int age_tx_ring_map; int * age_rx_tag; int * age_rx_sparemap; struct age_rxdesc* age_rxdesc; int * age_tx_tag; struct age_txdesc* age_txdesc; } ;
struct TYPE_3__ {scalar_t__ age_tx_ring_paddr; scalar_t__ age_rx_ring_paddr; scalar_t__ age_rr_ring_paddr; scalar_t__ age_cmb_block_paddr; scalar_t__ age_smb_block_paddr; int * age_smb_block; int * age_cmb_block; int * age_rr_ring; int * age_rx_ring; int * age_tx_ring; } ;
struct age_softc {TYPE_2__ age_cdata; TYPE_1__ age_rdata; } ;
struct age_rxdesc {int * rx_dmamap; } ;


 int AGE_RX_RING_CNT ;
 int AGE_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
age_dma_free(struct age_softc *sc)
{
 struct age_txdesc *txd;
 struct age_rxdesc *rxd;
 int i;


 if (sc->age_cdata.age_tx_tag != ((void*)0)) {
  for (i = 0; i < AGE_TX_RING_CNT; i++) {
   txd = &sc->age_cdata.age_txdesc[i];
   if (txd->tx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->age_cdata.age_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->age_cdata.age_tx_tag);
  sc->age_cdata.age_tx_tag = ((void*)0);
 }

 if (sc->age_cdata.age_rx_tag != ((void*)0)) {
  for (i = 0; i < AGE_RX_RING_CNT; i++) {
   rxd = &sc->age_cdata.age_rxdesc[i];
   if (rxd->rx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->age_cdata.age_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->age_cdata.age_rx_sparemap != ((void*)0)) {
   bus_dmamap_destroy(sc->age_cdata.age_rx_tag,
       sc->age_cdata.age_rx_sparemap);
   sc->age_cdata.age_rx_sparemap = ((void*)0);
  }
  bus_dma_tag_destroy(sc->age_cdata.age_rx_tag);
  sc->age_cdata.age_rx_tag = ((void*)0);
 }

 if (sc->age_cdata.age_tx_ring_tag != ((void*)0)) {
  if (sc->age_rdata.age_tx_ring_paddr != 0)
   bus_dmamap_unload(sc->age_cdata.age_tx_ring_tag,
       sc->age_cdata.age_tx_ring_map);
  if (sc->age_rdata.age_tx_ring != ((void*)0))
   bus_dmamem_free(sc->age_cdata.age_tx_ring_tag,
       sc->age_rdata.age_tx_ring,
       sc->age_cdata.age_tx_ring_map);
  sc->age_rdata.age_tx_ring_paddr = 0;
  sc->age_rdata.age_tx_ring = ((void*)0);
  bus_dma_tag_destroy(sc->age_cdata.age_tx_ring_tag);
  sc->age_cdata.age_tx_ring_tag = ((void*)0);
 }

 if (sc->age_cdata.age_rx_ring_tag != ((void*)0)) {
  if (sc->age_rdata.age_rx_ring_paddr != 0)
   bus_dmamap_unload(sc->age_cdata.age_rx_ring_tag,
       sc->age_cdata.age_rx_ring_map);
  if (sc->age_rdata.age_rx_ring != ((void*)0))
   bus_dmamem_free(sc->age_cdata.age_rx_ring_tag,
       sc->age_rdata.age_rx_ring,
       sc->age_cdata.age_rx_ring_map);
  sc->age_rdata.age_rx_ring_paddr = 0;
  sc->age_rdata.age_rx_ring = ((void*)0);
  bus_dma_tag_destroy(sc->age_cdata.age_rx_ring_tag);
  sc->age_cdata.age_rx_ring_tag = ((void*)0);
 }

 if (sc->age_cdata.age_rr_ring_tag != ((void*)0)) {
  if (sc->age_rdata.age_rr_ring_paddr != 0)
   bus_dmamap_unload(sc->age_cdata.age_rr_ring_tag,
       sc->age_cdata.age_rr_ring_map);
  if (sc->age_rdata.age_rr_ring != ((void*)0))
   bus_dmamem_free(sc->age_cdata.age_rr_ring_tag,
       sc->age_rdata.age_rr_ring,
       sc->age_cdata.age_rr_ring_map);
  sc->age_rdata.age_rr_ring_paddr = 0;
  sc->age_rdata.age_rr_ring = ((void*)0);
  bus_dma_tag_destroy(sc->age_cdata.age_rr_ring_tag);
  sc->age_cdata.age_rr_ring_tag = ((void*)0);
 }

 if (sc->age_cdata.age_cmb_block_tag != ((void*)0)) {
  if (sc->age_rdata.age_cmb_block_paddr != 0)
   bus_dmamap_unload(sc->age_cdata.age_cmb_block_tag,
       sc->age_cdata.age_cmb_block_map);
  if (sc->age_rdata.age_cmb_block != ((void*)0))
   bus_dmamem_free(sc->age_cdata.age_cmb_block_tag,
       sc->age_rdata.age_cmb_block,
       sc->age_cdata.age_cmb_block_map);
  sc->age_rdata.age_cmb_block_paddr = 0;
  sc->age_rdata.age_cmb_block = ((void*)0);
  bus_dma_tag_destroy(sc->age_cdata.age_cmb_block_tag);
  sc->age_cdata.age_cmb_block_tag = ((void*)0);
 }

 if (sc->age_cdata.age_smb_block_tag != ((void*)0)) {
  if (sc->age_rdata.age_smb_block_paddr != 0)
   bus_dmamap_unload(sc->age_cdata.age_smb_block_tag,
       sc->age_cdata.age_smb_block_map);
  if (sc->age_rdata.age_smb_block != ((void*)0))
   bus_dmamem_free(sc->age_cdata.age_smb_block_tag,
       sc->age_rdata.age_smb_block,
       sc->age_cdata.age_smb_block_map);
  sc->age_rdata.age_smb_block_paddr = 0;
  sc->age_rdata.age_smb_block = ((void*)0);
  bus_dma_tag_destroy(sc->age_cdata.age_smb_block_tag);
  sc->age_cdata.age_smb_block_tag = ((void*)0);
 }

 if (sc->age_cdata.age_buffer_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->age_cdata.age_buffer_tag);
  sc->age_cdata.age_buffer_tag = ((void*)0);
 }
 if (sc->age_cdata.age_parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->age_cdata.age_parent_tag);
  sc->age_cdata.age_parent_tag = ((void*)0);
 }
}
