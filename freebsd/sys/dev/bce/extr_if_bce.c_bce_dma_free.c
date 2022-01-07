
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bce_softc {scalar_t__ status_block_paddr; scalar_t__ stats_block_paddr; int ctx_pages; scalar_t__* ctx_paddr; int tx_pages; scalar_t__* tx_bd_chain_paddr; int rx_pages; scalar_t__* rx_bd_chain_paddr; int pg_pages; scalar_t__* pg_bd_chain_paddr; int * parent_tag; int * pg_mbuf_tag; int ** pg_mbuf_map; int * rx_mbuf_tag; int ** rx_mbuf_map; int * tx_mbuf_tag; int ** tx_mbuf_map; int * pg_bd_chain_tag; int ** pg_bd_chain; int ** pg_bd_chain_map; int * rx_bd_chain_tag; int ** rx_bd_chain; int ** rx_bd_chain_map; int * tx_bd_chain_tag; int ** tx_bd_chain; int ** tx_bd_chain_map; int * ctx_tag; int ** ctx_block; int ** ctx_map; int * stats_tag; int * stats_block; int * stats_map; int * status_tag; int * status_block; int * status_map; } ;


 scalar_t__ BCE_CHIP_NUM (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_NUM_5709 ;
 int BCE_VERBOSE_CTX ;
 int BCE_VERBOSE_RESET ;
 int BCE_VERBOSE_UNLOAD ;
 int DBENTER (int) ;
 int DBEXIT (int) ;
 int MAX_PG_BD_AVAIL ;
 int MAX_RX_BD_AVAIL ;
 int MAX_TX_BD_AVAIL ;
 scalar_t__ TRUE ;
 scalar_t__ bce_hdr_split ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;

__attribute__((used)) static void
bce_dma_free(struct bce_softc *sc)
{
 int i;

 DBENTER(BCE_VERBOSE_RESET | BCE_VERBOSE_UNLOAD | BCE_VERBOSE_CTX);


 if (sc->status_block_paddr != 0) {
  bus_dmamap_unload(
      sc->status_tag,
      sc->status_map);
  sc->status_block_paddr = 0;
 }

 if (sc->status_block != ((void*)0)) {
  bus_dmamem_free(
     sc->status_tag,
      sc->status_block,
      sc->status_map);
  sc->status_block = ((void*)0);
 }

 if (sc->status_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->status_tag);
  sc->status_tag = ((void*)0);
 }



 if (sc->stats_block_paddr != 0) {
  bus_dmamap_unload(
      sc->stats_tag,
      sc->stats_map);
  sc->stats_block_paddr = 0;
 }

 if (sc->stats_block != ((void*)0)) {
  bus_dmamem_free(
      sc->stats_tag,
      sc->stats_block,
      sc->stats_map);
  sc->stats_block = ((void*)0);
 }

 if (sc->stats_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->stats_tag);
  sc->stats_tag = ((void*)0);
 }



 if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709) {
  for (i = 0; i < sc->ctx_pages; i++ ) {
   if (sc->ctx_paddr[i] != 0) {
    bus_dmamap_unload(
        sc->ctx_tag,
        sc->ctx_map[i]);
    sc->ctx_paddr[i] = 0;
   }

   if (sc->ctx_block[i] != ((void*)0)) {
    bus_dmamem_free(
        sc->ctx_tag,
        sc->ctx_block[i],
        sc->ctx_map[i]);
    sc->ctx_block[i] = ((void*)0);
   }
  }


  if (sc->ctx_tag != ((void*)0)) {
   bus_dma_tag_destroy(sc->ctx_tag);
   sc->ctx_tag = ((void*)0);
  }
 }



 for (i = 0; i < sc->tx_pages; i++ ) {
  if (sc->tx_bd_chain_paddr[i] != 0) {
   bus_dmamap_unload(
       sc->tx_bd_chain_tag,
       sc->tx_bd_chain_map[i]);
   sc->tx_bd_chain_paddr[i] = 0;
  }

  if (sc->tx_bd_chain[i] != ((void*)0)) {
   bus_dmamem_free(
       sc->tx_bd_chain_tag,
       sc->tx_bd_chain[i],
       sc->tx_bd_chain_map[i]);
   sc->tx_bd_chain[i] = ((void*)0);
  }
 }


 if (sc->tx_bd_chain_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->tx_bd_chain_tag);
  sc->tx_bd_chain_tag = ((void*)0);
 }



 for (i = 0; i < sc->rx_pages; i++ ) {
  if (sc->rx_bd_chain_paddr[i] != 0) {
   bus_dmamap_unload(
       sc->rx_bd_chain_tag,
       sc->rx_bd_chain_map[i]);
   sc->rx_bd_chain_paddr[i] = 0;
  }

  if (sc->rx_bd_chain[i] != ((void*)0)) {
   bus_dmamem_free(
       sc->rx_bd_chain_tag,
       sc->rx_bd_chain[i],
       sc->rx_bd_chain_map[i]);
   sc->rx_bd_chain[i] = ((void*)0);
  }
 }


 if (sc->rx_bd_chain_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->rx_bd_chain_tag);
  sc->rx_bd_chain_tag = ((void*)0);
 }



 if (bce_hdr_split == TRUE) {
  for (i = 0; i < sc->pg_pages; i++ ) {
   if (sc->pg_bd_chain_paddr[i] != 0) {
    bus_dmamap_unload(
        sc->pg_bd_chain_tag,
        sc->pg_bd_chain_map[i]);
    sc->pg_bd_chain_paddr[i] = 0;
   }

   if (sc->pg_bd_chain[i] != ((void*)0)) {
    bus_dmamem_free(
        sc->pg_bd_chain_tag,
        sc->pg_bd_chain[i],
        sc->pg_bd_chain_map[i]);
    sc->pg_bd_chain[i] = ((void*)0);
   }
  }


  if (sc->pg_bd_chain_tag != ((void*)0)) {
   bus_dma_tag_destroy(sc->pg_bd_chain_tag);
   sc->pg_bd_chain_tag = ((void*)0);
  }
 }



 for (i = 0; i < MAX_TX_BD_AVAIL; i++) {
  if (sc->tx_mbuf_map[i] != ((void*)0)) {
   bus_dmamap_unload(sc->tx_mbuf_tag,
       sc->tx_mbuf_map[i]);
   bus_dmamap_destroy(sc->tx_mbuf_tag,
        sc->tx_mbuf_map[i]);
   sc->tx_mbuf_map[i] = ((void*)0);
  }
 }


 if (sc->tx_mbuf_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->tx_mbuf_tag);
  sc->tx_mbuf_tag = ((void*)0);
 }


 for (i = 0; i < MAX_RX_BD_AVAIL; i++) {
  if (sc->rx_mbuf_map[i] != ((void*)0)) {
   bus_dmamap_unload(sc->rx_mbuf_tag,
       sc->rx_mbuf_map[i]);
   bus_dmamap_destroy(sc->rx_mbuf_tag,
        sc->rx_mbuf_map[i]);
   sc->rx_mbuf_map[i] = ((void*)0);
  }
 }


 if (sc->rx_mbuf_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->rx_mbuf_tag);
  sc->rx_mbuf_tag = ((void*)0);
 }


 if (bce_hdr_split == TRUE) {
  for (i = 0; i < MAX_PG_BD_AVAIL; i++) {
   if (sc->pg_mbuf_map[i] != ((void*)0)) {
    bus_dmamap_unload(sc->pg_mbuf_tag,
        sc->pg_mbuf_map[i]);
    bus_dmamap_destroy(sc->pg_mbuf_tag,
        sc->pg_mbuf_map[i]);
    sc->pg_mbuf_map[i] = ((void*)0);
   }
  }


  if (sc->pg_mbuf_tag != ((void*)0)) {
   bus_dma_tag_destroy(sc->pg_mbuf_tag);
   sc->pg_mbuf_tag = ((void*)0);
  }
 }


 if (sc->parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->parent_tag);
  sc->parent_tag = ((void*)0);
 }

 DBEXIT(BCE_VERBOSE_RESET | BCE_VERBOSE_UNLOAD | BCE_VERBOSE_CTX);
}
