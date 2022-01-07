
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct alc_txdesc {int * tx_dmamap; } ;
struct TYPE_4__ {int * alc_parent_tag; int * alc_buffer_tag; int * alc_smb_tag; int alc_smb_map; int * alc_cmb_tag; int alc_cmb_map; int * alc_rr_ring_tag; int alc_rr_ring_map; int * alc_rx_ring_tag; int alc_rx_ring_map; int * alc_tx_ring_tag; int alc_tx_ring_map; int * alc_rx_tag; int * alc_rx_sparemap; struct alc_rxdesc* alc_rxdesc; int * alc_tx_tag; struct alc_txdesc* alc_txdesc; } ;
struct TYPE_3__ {scalar_t__ alc_tx_ring_paddr; scalar_t__ alc_rx_ring_paddr; scalar_t__ alc_rr_ring_paddr; scalar_t__ alc_cmb_paddr; scalar_t__ alc_smb_paddr; int * alc_smb; int * alc_cmb; int * alc_rr_ring; int * alc_rx_ring; int * alc_tx_ring; } ;
struct alc_softc {TYPE_2__ alc_cdata; TYPE_1__ alc_rdata; } ;
struct alc_rxdesc {int * rx_dmamap; } ;


 int ALC_RX_RING_CNT ;
 int ALC_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
alc_dma_free(struct alc_softc *sc)
{
 struct alc_txdesc *txd;
 struct alc_rxdesc *rxd;
 int i;


 if (sc->alc_cdata.alc_tx_tag != ((void*)0)) {
  for (i = 0; i < ALC_TX_RING_CNT; i++) {
   txd = &sc->alc_cdata.alc_txdesc[i];
   if (txd->tx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->alc_cdata.alc_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->alc_cdata.alc_tx_tag);
  sc->alc_cdata.alc_tx_tag = ((void*)0);
 }

 if (sc->alc_cdata.alc_rx_tag != ((void*)0)) {
  for (i = 0; i < ALC_RX_RING_CNT; i++) {
   rxd = &sc->alc_cdata.alc_rxdesc[i];
   if (rxd->rx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->alc_cdata.alc_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->alc_cdata.alc_rx_sparemap != ((void*)0)) {
   bus_dmamap_destroy(sc->alc_cdata.alc_rx_tag,
       sc->alc_cdata.alc_rx_sparemap);
   sc->alc_cdata.alc_rx_sparemap = ((void*)0);
  }
  bus_dma_tag_destroy(sc->alc_cdata.alc_rx_tag);
  sc->alc_cdata.alc_rx_tag = ((void*)0);
 }

 if (sc->alc_cdata.alc_tx_ring_tag != ((void*)0)) {
  if (sc->alc_rdata.alc_tx_ring_paddr != 0)
   bus_dmamap_unload(sc->alc_cdata.alc_tx_ring_tag,
       sc->alc_cdata.alc_tx_ring_map);
  if (sc->alc_rdata.alc_tx_ring != ((void*)0))
   bus_dmamem_free(sc->alc_cdata.alc_tx_ring_tag,
       sc->alc_rdata.alc_tx_ring,
       sc->alc_cdata.alc_tx_ring_map);
  sc->alc_rdata.alc_tx_ring_paddr = 0;
  sc->alc_rdata.alc_tx_ring = ((void*)0);
  bus_dma_tag_destroy(sc->alc_cdata.alc_tx_ring_tag);
  sc->alc_cdata.alc_tx_ring_tag = ((void*)0);
 }

 if (sc->alc_cdata.alc_rx_ring_tag != ((void*)0)) {
  if (sc->alc_rdata.alc_rx_ring_paddr != 0)
   bus_dmamap_unload(sc->alc_cdata.alc_rx_ring_tag,
       sc->alc_cdata.alc_rx_ring_map);
  if (sc->alc_rdata.alc_rx_ring != ((void*)0))
   bus_dmamem_free(sc->alc_cdata.alc_rx_ring_tag,
       sc->alc_rdata.alc_rx_ring,
       sc->alc_cdata.alc_rx_ring_map);
  sc->alc_rdata.alc_rx_ring_paddr = 0;
  sc->alc_rdata.alc_rx_ring = ((void*)0);
  bus_dma_tag_destroy(sc->alc_cdata.alc_rx_ring_tag);
  sc->alc_cdata.alc_rx_ring_tag = ((void*)0);
 }

 if (sc->alc_cdata.alc_rr_ring_tag != ((void*)0)) {
  if (sc->alc_rdata.alc_rr_ring_paddr != 0)
   bus_dmamap_unload(sc->alc_cdata.alc_rr_ring_tag,
       sc->alc_cdata.alc_rr_ring_map);
  if (sc->alc_rdata.alc_rr_ring != ((void*)0))
   bus_dmamem_free(sc->alc_cdata.alc_rr_ring_tag,
       sc->alc_rdata.alc_rr_ring,
       sc->alc_cdata.alc_rr_ring_map);
  sc->alc_rdata.alc_rr_ring_paddr = 0;
  sc->alc_rdata.alc_rr_ring = ((void*)0);
  bus_dma_tag_destroy(sc->alc_cdata.alc_rr_ring_tag);
  sc->alc_cdata.alc_rr_ring_tag = ((void*)0);
 }

 if (sc->alc_cdata.alc_cmb_tag != ((void*)0)) {
  if (sc->alc_rdata.alc_cmb_paddr != 0)
   bus_dmamap_unload(sc->alc_cdata.alc_cmb_tag,
       sc->alc_cdata.alc_cmb_map);
  if (sc->alc_rdata.alc_cmb != ((void*)0))
   bus_dmamem_free(sc->alc_cdata.alc_cmb_tag,
       sc->alc_rdata.alc_cmb,
       sc->alc_cdata.alc_cmb_map);
  sc->alc_rdata.alc_cmb_paddr = 0;
  sc->alc_rdata.alc_cmb = ((void*)0);
  bus_dma_tag_destroy(sc->alc_cdata.alc_cmb_tag);
  sc->alc_cdata.alc_cmb_tag = ((void*)0);
 }

 if (sc->alc_cdata.alc_smb_tag != ((void*)0)) {
  if (sc->alc_rdata.alc_smb_paddr != 0)
   bus_dmamap_unload(sc->alc_cdata.alc_smb_tag,
       sc->alc_cdata.alc_smb_map);
  if (sc->alc_rdata.alc_smb != ((void*)0))
   bus_dmamem_free(sc->alc_cdata.alc_smb_tag,
       sc->alc_rdata.alc_smb,
       sc->alc_cdata.alc_smb_map);
  sc->alc_rdata.alc_smb_paddr = 0;
  sc->alc_rdata.alc_smb = ((void*)0);
  bus_dma_tag_destroy(sc->alc_cdata.alc_smb_tag);
  sc->alc_cdata.alc_smb_tag = ((void*)0);
 }
 if (sc->alc_cdata.alc_buffer_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->alc_cdata.alc_buffer_tag);
  sc->alc_cdata.alc_buffer_tag = ((void*)0);
 }
 if (sc->alc_cdata.alc_parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->alc_cdata.alc_parent_tag);
  sc->alc_cdata.alc_parent_tag = ((void*)0);
 }
}
