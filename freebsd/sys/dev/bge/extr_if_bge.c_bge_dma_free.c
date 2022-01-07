
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bge_parent_tag; scalar_t__ bge_buffer_tag; scalar_t__ bge_stats_tag; int bge_stats_map; scalar_t__ bge_status_tag; int bge_status_map; scalar_t__ bge_tx_ring_tag; int bge_tx_ring_map; scalar_t__ bge_rx_return_ring_tag; int bge_rx_return_ring_map; scalar_t__ bge_rx_jumbo_ring_tag; int bge_rx_jumbo_ring_map; scalar_t__ bge_rx_std_ring_tag; int bge_rx_std_ring_map; scalar_t__ bge_tx_mtag; scalar_t__ bge_mtag_jumbo; scalar_t__ bge_rx_mtag; scalar_t__* bge_tx_dmamap; scalar_t__ bge_rx_jumbo_sparemap; scalar_t__* bge_rx_jumbo_dmamap; scalar_t__ bge_rx_std_sparemap; scalar_t__* bge_rx_std_dmamap; } ;
struct TYPE_3__ {scalar_t__ bge_stats; scalar_t__ bge_stats_paddr; scalar_t__ bge_status_block; scalar_t__ bge_status_block_paddr; scalar_t__ bge_tx_ring; scalar_t__ bge_tx_ring_paddr; scalar_t__ bge_rx_return_ring; scalar_t__ bge_rx_return_ring_paddr; scalar_t__ bge_rx_jumbo_ring; scalar_t__ bge_rx_jumbo_ring_paddr; scalar_t__ bge_rx_std_ring; scalar_t__ bge_rx_std_ring_paddr; } ;
struct bge_softc {TYPE_2__ bge_cdata; TYPE_1__ bge_ldata; } ;


 int BGE_JUMBO_RX_RING_CNT ;
 int BGE_STD_RX_RING_CNT ;
 int BGE_TX_RING_CNT ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
bge_dma_free(struct bge_softc *sc)
{
 int i;


 for (i = 0; i < BGE_STD_RX_RING_CNT; i++) {
  if (sc->bge_cdata.bge_rx_std_dmamap[i])
   bus_dmamap_destroy(sc->bge_cdata.bge_rx_mtag,
       sc->bge_cdata.bge_rx_std_dmamap[i]);
 }
 if (sc->bge_cdata.bge_rx_std_sparemap)
  bus_dmamap_destroy(sc->bge_cdata.bge_rx_mtag,
      sc->bge_cdata.bge_rx_std_sparemap);


 for (i = 0; i < BGE_JUMBO_RX_RING_CNT; i++) {
  if (sc->bge_cdata.bge_rx_jumbo_dmamap[i])
   bus_dmamap_destroy(sc->bge_cdata.bge_mtag_jumbo,
       sc->bge_cdata.bge_rx_jumbo_dmamap[i]);
 }
 if (sc->bge_cdata.bge_rx_jumbo_sparemap)
  bus_dmamap_destroy(sc->bge_cdata.bge_mtag_jumbo,
      sc->bge_cdata.bge_rx_jumbo_sparemap);


 for (i = 0; i < BGE_TX_RING_CNT; i++) {
  if (sc->bge_cdata.bge_tx_dmamap[i])
   bus_dmamap_destroy(sc->bge_cdata.bge_tx_mtag,
       sc->bge_cdata.bge_tx_dmamap[i]);
 }

 if (sc->bge_cdata.bge_rx_mtag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_rx_mtag);
 if (sc->bge_cdata.bge_mtag_jumbo)
  bus_dma_tag_destroy(sc->bge_cdata.bge_mtag_jumbo);
 if (sc->bge_cdata.bge_tx_mtag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_tx_mtag);


 if (sc->bge_ldata.bge_rx_std_ring_paddr)
  bus_dmamap_unload(sc->bge_cdata.bge_rx_std_ring_tag,
      sc->bge_cdata.bge_rx_std_ring_map);
 if (sc->bge_ldata.bge_rx_std_ring)
  bus_dmamem_free(sc->bge_cdata.bge_rx_std_ring_tag,
      sc->bge_ldata.bge_rx_std_ring,
      sc->bge_cdata.bge_rx_std_ring_map);

 if (sc->bge_cdata.bge_rx_std_ring_tag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_rx_std_ring_tag);


 if (sc->bge_ldata.bge_rx_jumbo_ring_paddr)
  bus_dmamap_unload(sc->bge_cdata.bge_rx_jumbo_ring_tag,
      sc->bge_cdata.bge_rx_jumbo_ring_map);

 if (sc->bge_ldata.bge_rx_jumbo_ring)
  bus_dmamem_free(sc->bge_cdata.bge_rx_jumbo_ring_tag,
      sc->bge_ldata.bge_rx_jumbo_ring,
      sc->bge_cdata.bge_rx_jumbo_ring_map);

 if (sc->bge_cdata.bge_rx_jumbo_ring_tag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_rx_jumbo_ring_tag);


 if (sc->bge_ldata.bge_rx_return_ring_paddr)
  bus_dmamap_unload(sc->bge_cdata.bge_rx_return_ring_tag,
      sc->bge_cdata.bge_rx_return_ring_map);

 if (sc->bge_ldata.bge_rx_return_ring)
  bus_dmamem_free(sc->bge_cdata.bge_rx_return_ring_tag,
      sc->bge_ldata.bge_rx_return_ring,
      sc->bge_cdata.bge_rx_return_ring_map);

 if (sc->bge_cdata.bge_rx_return_ring_tag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_rx_return_ring_tag);


 if (sc->bge_ldata.bge_tx_ring_paddr)
  bus_dmamap_unload(sc->bge_cdata.bge_tx_ring_tag,
      sc->bge_cdata.bge_tx_ring_map);

 if (sc->bge_ldata.bge_tx_ring)
  bus_dmamem_free(sc->bge_cdata.bge_tx_ring_tag,
      sc->bge_ldata.bge_tx_ring,
      sc->bge_cdata.bge_tx_ring_map);

 if (sc->bge_cdata.bge_tx_ring_tag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_tx_ring_tag);


 if (sc->bge_ldata.bge_status_block_paddr)
  bus_dmamap_unload(sc->bge_cdata.bge_status_tag,
      sc->bge_cdata.bge_status_map);

 if (sc->bge_ldata.bge_status_block)
  bus_dmamem_free(sc->bge_cdata.bge_status_tag,
      sc->bge_ldata.bge_status_block,
      sc->bge_cdata.bge_status_map);

 if (sc->bge_cdata.bge_status_tag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_status_tag);


 if (sc->bge_ldata.bge_stats_paddr)
  bus_dmamap_unload(sc->bge_cdata.bge_stats_tag,
      sc->bge_cdata.bge_stats_map);

 if (sc->bge_ldata.bge_stats)
  bus_dmamem_free(sc->bge_cdata.bge_stats_tag,
      sc->bge_ldata.bge_stats,
      sc->bge_cdata.bge_stats_map);

 if (sc->bge_cdata.bge_stats_tag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_stats_tag);

 if (sc->bge_cdata.bge_buffer_tag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_buffer_tag);


 if (sc->bge_cdata.bge_parent_tag)
  bus_dma_tag_destroy(sc->bge_cdata.bge_parent_tag);
}
