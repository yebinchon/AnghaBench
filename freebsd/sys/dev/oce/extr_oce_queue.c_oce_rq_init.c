
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int q_len; int frag_size; int mtu; int is_rss_queue; scalar_t__ eqd; } ;
struct oce_rq {int rx_lock; int ring; TYPE_2__* pckts; int tag; void* parent; scalar_t__ pending; TYPE_1__ cfg; scalar_t__ lro_pkts_queued; } ;
struct oce_nic_rqe {int dummy; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int map; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int BUS_SPACE_MAXADDR ;
 int LOCK_CREATE (int *,char*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ OCE_LOG2 (int) ;
 int OCE_RQ_PACKET_ARRAY_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 struct oce_rq* malloc (int,int ,int) ;
 int oce_create_ring_buffer (TYPE_3__*,int,int) ;
 int oce_rq_buf_size ;
 int oce_rq_free (struct oce_rq*) ;

__attribute__((used)) static struct
oce_rq *oce_rq_init(POCE_SOFTC sc,
      uint32_t q_len,
      uint32_t frag_size,
      uint32_t mtu, uint32_t rss)
{
 struct oce_rq *rq;
 int rc = 0, i;

 if (OCE_LOG2(frag_size) <= 0)
  return ((void*)0);

 if ((q_len == 0) || (q_len > 1024))
  return ((void*)0);


 rq = malloc(sizeof(struct oce_rq), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!rq)
  return ((void*)0);


 rq->cfg.q_len = q_len;
 rq->cfg.frag_size = frag_size;
 rq->cfg.mtu = mtu;
 rq->cfg.eqd = 0;
 rq->lro_pkts_queued = 0;
 rq->cfg.is_rss_queue = rss;
        rq->pending = 0;

 rq->parent = (void *)sc;

 rc = bus_dma_tag_create(bus_get_dma_tag(sc->dev),
   1, 0,
   BUS_SPACE_MAXADDR,
   BUS_SPACE_MAXADDR,
   ((void*)0), ((void*)0),
   oce_rq_buf_size,
   1, oce_rq_buf_size, 0, ((void*)0), ((void*)0), &rq->tag);
 if (rc)
  goto free_rq;

 for (i = 0; i < OCE_RQ_PACKET_ARRAY_SIZE; i++) {
  rc = bus_dmamap_create(rq->tag, 0, &rq->pckts[i].map);
  if (rc)
   goto free_rq;
 }


 rq->ring = oce_create_ring_buffer(sc, q_len,
     sizeof(struct oce_nic_rqe));
 if (!rq->ring)
  goto free_rq;

 LOCK_CREATE(&rq->rx_lock, "RX_lock");

 return rq;

free_rq:
 device_printf(sc->dev, "Create RQ failed\n");
 oce_rq_free(rq);
 return ((void*)0);
}
