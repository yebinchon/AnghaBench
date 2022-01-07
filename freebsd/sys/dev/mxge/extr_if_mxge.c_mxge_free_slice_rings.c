
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int mask; TYPE_5__* info; int * dmat; int extra_map; TYPE_5__* shadow; } ;
struct TYPE_8__ {int mask; TYPE_5__* info; int * dmat; int extra_map; TYPE_5__* shadow; } ;
struct TYPE_7__ {int mask; TYPE_5__* info; int * dmat; TYPE_5__* seg_list; TYPE_5__* req_bytes; } ;
struct TYPE_6__ {int * entry; int dma; } ;
struct mxge_slice_state {TYPE_4__ rx_big; TYPE_3__ rx_small; TYPE_2__ tx; TYPE_1__ rx_done; } ;
struct TYPE_10__ {int map; } ;


 int M_DEVBUF ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int ) ;
 int free (TYPE_5__*,int ) ;
 int mxge_dma_free (int *) ;

__attribute__((used)) static void
mxge_free_slice_rings(struct mxge_slice_state *ss)
{
 int i;


 if (ss->rx_done.entry != ((void*)0))
  mxge_dma_free(&ss->rx_done.dma);
 ss->rx_done.entry = ((void*)0);

 if (ss->tx.req_bytes != ((void*)0))
  free(ss->tx.req_bytes, M_DEVBUF);
 ss->tx.req_bytes = ((void*)0);

 if (ss->tx.seg_list != ((void*)0))
  free(ss->tx.seg_list, M_DEVBUF);
 ss->tx.seg_list = ((void*)0);

 if (ss->rx_small.shadow != ((void*)0))
  free(ss->rx_small.shadow, M_DEVBUF);
 ss->rx_small.shadow = ((void*)0);

 if (ss->rx_big.shadow != ((void*)0))
  free(ss->rx_big.shadow, M_DEVBUF);
 ss->rx_big.shadow = ((void*)0);

 if (ss->tx.info != ((void*)0)) {
  if (ss->tx.dmat != ((void*)0)) {
   for (i = 0; i <= ss->tx.mask; i++) {
    bus_dmamap_destroy(ss->tx.dmat,
         ss->tx.info[i].map);
   }
   bus_dma_tag_destroy(ss->tx.dmat);
  }
  free(ss->tx.info, M_DEVBUF);
 }
 ss->tx.info = ((void*)0);

 if (ss->rx_small.info != ((void*)0)) {
  if (ss->rx_small.dmat != ((void*)0)) {
   for (i = 0; i <= ss->rx_small.mask; i++) {
    bus_dmamap_destroy(ss->rx_small.dmat,
         ss->rx_small.info[i].map);
   }
   bus_dmamap_destroy(ss->rx_small.dmat,
        ss->rx_small.extra_map);
   bus_dma_tag_destroy(ss->rx_small.dmat);
  }
  free(ss->rx_small.info, M_DEVBUF);
 }
 ss->rx_small.info = ((void*)0);

 if (ss->rx_big.info != ((void*)0)) {
  if (ss->rx_big.dmat != ((void*)0)) {
   for (i = 0; i <= ss->rx_big.mask; i++) {
    bus_dmamap_destroy(ss->rx_big.dmat,
         ss->rx_big.info[i].map);
   }
   bus_dmamap_destroy(ss->rx_big.dmat,
        ss->rx_big.extra_map);
   bus_dma_tag_destroy(ss->rx_big.dmat);
  }
  free(ss->rx_big.info, M_DEVBUF);
 }
 ss->rx_big.info = ((void*)0);
}
