
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_10__ {int mutex; } ;
struct TYPE_7__ {int q_len; int nbufs; int nhdl; int eqd; scalar_t__ wq_type; } ;
struct oce_wq {int br; TYPE_6__ tx_lock; TYPE_6__ tx_compl_lock; int ring; TYPE_2__* pckts; int tag; void* parent; TYPE_1__ cfg; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int map; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int BUS_SPACE_MAXADDR ;
 int LOCK_CREATE (TYPE_6__*,char*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int NIC_WQE_SIZE ;
 int OCE_DEFAULT_WQ_EQD ;
 int OCE_MAX_TX_ELEMENTS ;
 int OCE_MAX_TX_SIZE ;
 int OCE_WQ_PACKET_ARRAY_SIZE ;
 int PAGE_SIZE ;
 int buf_ring_alloc (int,int ,int ,int *) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,...) ;
 struct oce_wq* malloc (int,int ,int) ;
 int oce_create_ring_buffer (TYPE_3__*,int,int ) ;
 int oce_wq_free (struct oce_wq*) ;

__attribute__((used)) static struct
oce_wq *oce_wq_init(POCE_SOFTC sc, uint32_t q_len, uint32_t wq_type)
{
 struct oce_wq *wq;
 int rc = 0, i;


 if (q_len < 256 || q_len > 2048) {
  device_printf(sc->dev,
     "Invalid q length. Must be "
     "[256, 2000]: 0x%x\n", q_len);
  return ((void*)0);
 }


 wq = malloc(sizeof(struct oce_wq), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!wq)
  return ((void*)0);


 wq->cfg.q_len = q_len;
 wq->cfg.wq_type = (uint8_t) wq_type;
 wq->cfg.eqd = OCE_DEFAULT_WQ_EQD;
 wq->cfg.nbufs = 2 * wq->cfg.q_len;
 wq->cfg.nhdl = 2 * wq->cfg.q_len;

 wq->parent = (void *)sc;

 rc = bus_dma_tag_create(bus_get_dma_tag(sc->dev),
    1, 0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    OCE_MAX_TX_SIZE,
    OCE_MAX_TX_ELEMENTS,
    PAGE_SIZE, 0, ((void*)0), ((void*)0), &wq->tag);

 if (rc)
  goto free_wq;


 for (i = 0; i < OCE_WQ_PACKET_ARRAY_SIZE; i++) {
  rc = bus_dmamap_create(wq->tag, 0, &wq->pckts[i].map);
  if (rc)
   goto free_wq;
 }

 wq->ring = oce_create_ring_buffer(sc, q_len, NIC_WQE_SIZE);
 if (!wq->ring)
  goto free_wq;


 LOCK_CREATE(&wq->tx_lock, "TX_lock");
 LOCK_CREATE(&wq->tx_compl_lock, "WQ_HANDLER_LOCK");
 return wq;


free_wq:
 device_printf(sc->dev, "Create WQ failed\n");
 oce_wq_free(wq);
 return ((void*)0);
}
