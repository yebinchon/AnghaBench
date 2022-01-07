
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oce_rq {scalar_t__ pending; TYPE_1__* ring; int tag; struct oce_packet_desc* pckts; } ;
struct oce_packet_desc {int * mbuf; int map; } ;
struct TYPE_2__ {size_t cidx; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int RING_GET (TYPE_1__*,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

void
oce_free_posted_rxbuf(struct oce_rq *rq)
{
 struct oce_packet_desc *pd;

 while (rq->pending) {

  pd = &rq->pckts[rq->ring->cidx];
  bus_dmamap_sync(rq->tag, pd->map, BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(rq->tag, pd->map);
  if (pd->mbuf != ((void*)0)) {
   m_freem(pd->mbuf);
   pd->mbuf = ((void*)0);
  }

  RING_GET(rq->ring,1);
                rq->pending--;
 }

}
