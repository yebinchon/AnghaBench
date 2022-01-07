
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msk_rxdesc {int * rx_dmamap; } ;
struct TYPE_4__ {int * msk_jumbo_rx_tag; int * msk_jumbo_rx_sparemap; struct msk_rxdesc* msk_jumbo_rxdesc; int * msk_jumbo_rx_ring_tag; int msk_jumbo_rx_ring_map; } ;
struct TYPE_3__ {scalar_t__ msk_jumbo_rx_ring_paddr; int * msk_jumbo_rx_ring; } ;
struct msk_if_softc {TYPE_2__ msk_cdata; TYPE_1__ msk_rdata; } ;


 int MSK_JUMBO_RX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
msk_rx_dma_jfree(struct msk_if_softc *sc_if)
{
 struct msk_rxdesc *jrxd;
 int i;


 if (sc_if->msk_cdata.msk_jumbo_rx_ring_tag) {
  if (sc_if->msk_rdata.msk_jumbo_rx_ring_paddr)
   bus_dmamap_unload(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
       sc_if->msk_cdata.msk_jumbo_rx_ring_map);
  if (sc_if->msk_rdata.msk_jumbo_rx_ring)
   bus_dmamem_free(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
       sc_if->msk_rdata.msk_jumbo_rx_ring,
       sc_if->msk_cdata.msk_jumbo_rx_ring_map);
  sc_if->msk_rdata.msk_jumbo_rx_ring = ((void*)0);
  sc_if->msk_rdata.msk_jumbo_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc_if->msk_cdata.msk_jumbo_rx_ring_tag);
  sc_if->msk_cdata.msk_jumbo_rx_ring_tag = ((void*)0);
 }

 if (sc_if->msk_cdata.msk_jumbo_rx_tag) {
  for (i = 0; i < MSK_JUMBO_RX_RING_CNT; i++) {
   jrxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[i];
   if (jrxd->rx_dmamap) {
    bus_dmamap_destroy(
        sc_if->msk_cdata.msk_jumbo_rx_tag,
        jrxd->rx_dmamap);
    jrxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc_if->msk_cdata.msk_jumbo_rx_sparemap) {
   bus_dmamap_destroy(sc_if->msk_cdata.msk_jumbo_rx_tag,
       sc_if->msk_cdata.msk_jumbo_rx_sparemap);
   sc_if->msk_cdata.msk_jumbo_rx_sparemap = 0;
  }
  bus_dma_tag_destroy(sc_if->msk_cdata.msk_jumbo_rx_tag);
  sc_if->msk_cdata.msk_jumbo_rx_tag = ((void*)0);
 }
}
