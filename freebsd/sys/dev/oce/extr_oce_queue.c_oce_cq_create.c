
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
struct oce_eq {int dummy; } ;
struct TYPE_6__ {scalar_t__ nodelay; void* item_size; void* q_len; } ;
struct oce_cq {TYPE_1__ cq_cfg; struct oce_eq* eq; TYPE_2__* parent; int ring; } ;
struct TYPE_7__ {int dev; int ncqs; struct oce_cq** cq; } ;
typedef TYPE_2__* POCE_SOFTC ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int device_printf (int ,char*) ;
 struct oce_cq* malloc (int,int ,int) ;
 int oce_cq_del (TYPE_2__*,struct oce_cq*) ;
 int oce_create_ring_buffer (TYPE_2__*,void*,void*) ;
 int oce_mbox_cq_create (struct oce_cq*,void*,void*) ;

struct oce_cq *
oce_cq_create(POCE_SOFTC sc, struct oce_eq *eq,
        uint32_t q_len,
        uint32_t item_size,
        uint32_t sol_event,
        uint32_t is_eventable,
        uint32_t nodelay, uint32_t ncoalesce)
{
 struct oce_cq *cq = ((void*)0);
 int rc = 0;

 cq = malloc(sizeof(struct oce_cq), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!cq)
  return ((void*)0);

 cq->ring = oce_create_ring_buffer(sc, q_len, item_size);
 if (!cq->ring)
  goto error;

 cq->parent = sc;
 cq->eq = eq;
 cq->cq_cfg.q_len = q_len;
 cq->cq_cfg.item_size = item_size;
 cq->cq_cfg.nodelay = (uint8_t) nodelay;

 rc = oce_mbox_cq_create(cq, ncoalesce, is_eventable);
 if (rc)
  goto error;

 sc->cq[sc->ncqs++] = cq;

 return cq;

error:
 device_printf(sc->dev, "CQ create failed\n");
 oce_cq_del(sc, cq);
 return ((void*)0);
}
