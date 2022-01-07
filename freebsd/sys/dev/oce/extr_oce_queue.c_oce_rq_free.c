
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oce_rq {int rx_lock; int * tag; TYPE_1__* pckts; int * ring; int parent; } ;
struct TYPE_2__ {int * mbuf; int * map; } ;
typedef int POCE_SOFTC ;


 int LOCK_DESTROY (int *) ;
 int M_DEVBUF ;
 int OCE_RQ_PACKET_ARRAY_SIZE ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int *) ;
 int free (struct oce_rq*,int ) ;
 int m_free (int *) ;
 int oce_destroy_ring_buffer (int ,int *) ;

__attribute__((used)) static void
oce_rq_free(struct oce_rq *rq)
{
 POCE_SOFTC sc = (POCE_SOFTC) rq->parent;
 int i = 0 ;

 if (rq->ring != ((void*)0)) {
  oce_destroy_ring_buffer(sc, rq->ring);
  rq->ring = ((void*)0);
 }
 for (i = 0; i < OCE_RQ_PACKET_ARRAY_SIZE; i++) {
  if (rq->pckts[i].map != ((void*)0)) {
   bus_dmamap_unload(rq->tag, rq->pckts[i].map);
   bus_dmamap_destroy(rq->tag, rq->pckts[i].map);
   rq->pckts[i].map = ((void*)0);
  }
  if (rq->pckts[i].mbuf) {
   m_free(rq->pckts[i].mbuf);
   rq->pckts[i].mbuf = ((void*)0);
  }
 }

 if (rq->tag != ((void*)0))
  bus_dma_tag_destroy(rq->tag);

 LOCK_DESTROY(&rq->rx_lock);
 free(rq, M_DEVBUF);
}
