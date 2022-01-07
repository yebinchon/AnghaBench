
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oce_wq {int tx_compl_lock; int tx_lock; int * br; int * tag; TYPE_1__* pckts; int * ring; int txtask; int parent; } ;
struct TYPE_2__ {int * map; } ;
typedef int POCE_SOFTC ;


 int LOCK_DESTROY (int *) ;
 int M_DEVBUF ;
 int OCE_WQ_PACKET_ARRAY_SIZE ;
 int buf_ring_free (int *,int ) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int *) ;
 int free (struct oce_wq*,int ) ;
 int oce_destroy_ring_buffer (int ,int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
oce_wq_free(struct oce_wq *wq)
{
 POCE_SOFTC sc = (POCE_SOFTC) wq->parent;
 int i;

 taskqueue_drain(taskqueue_swi, &wq->txtask);

 if (wq->ring != ((void*)0)) {
  oce_destroy_ring_buffer(sc, wq->ring);
  wq->ring = ((void*)0);
 }

 for (i = 0; i < OCE_WQ_PACKET_ARRAY_SIZE; i++) {
  if (wq->pckts[i].map != ((void*)0)) {
   bus_dmamap_unload(wq->tag, wq->pckts[i].map);
   bus_dmamap_destroy(wq->tag, wq->pckts[i].map);
   wq->pckts[i].map = ((void*)0);
  }
 }

 if (wq->tag != ((void*)0))
  bus_dma_tag_destroy(wq->tag);
 if (wq->br != ((void*)0))
  buf_ring_free(wq->br, M_DEVBUF);

 LOCK_DESTROY(&wq->tx_lock);
 LOCK_DESTROY(&wq->tx_compl_lock);
 free(wq, M_DEVBUF);
}
