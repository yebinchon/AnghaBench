
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct oce_rq {int pending; TYPE_2__* ring; int tag; struct oce_packet_desc* pckts; int parent; } ;
struct oce_packet_desc {int * mbuf; int map; } ;
struct TYPE_4__ {size_t cidx; size_t pidx; } ;
struct TYPE_3__ {int dev; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int BUS_DMASYNC_POSTWRITE ;
 int RING_GET (TYPE_2__*,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*) ;
 int m_freem (int *) ;

void
oce_discard_rx_comp(struct oce_rq *rq, int num_frags)
{
 uint32_t i = 0;
 struct oce_packet_desc *pd;
 POCE_SOFTC sc = (POCE_SOFTC) rq->parent;

 for (i = 0; i < num_frags; i++) {
                if (rq->ring->cidx == rq->ring->pidx) {
                        device_printf(sc->dev,
                                "oce_discard_rx_comp: Invalid RX completion - Queue is empty\n");
                        return;
                }
                pd = &rq->pckts[rq->ring->cidx];
                bus_dmamap_sync(rq->tag, pd->map, BUS_DMASYNC_POSTWRITE);
                bus_dmamap_unload(rq->tag, pd->map);
                if (pd->mbuf != ((void*)0)) {
                        m_freem(pd->mbuf);
                        pd->mbuf = ((void*)0);
                }

  RING_GET(rq->ring, 1);
                rq->pending--;
 }
}
