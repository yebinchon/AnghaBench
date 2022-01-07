
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int q_len; } ;
struct oce_rq {TYPE_2__* cq; int parent; TYPE_1__ cfg; } ;
struct TYPE_6__ {scalar_t__ enable_hwlro; } ;
struct TYPE_5__ {int cq_id; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int TRUE ;
 int oce_alloc_rx_bufs (struct oce_rq*,int) ;
 int oce_arm_cq (int ,int ,int ,int ) ;

int
oce_start_rq(struct oce_rq *rq)
{
 POCE_SOFTC sc = (POCE_SOFTC) rq->parent;
 int rc;

 if(sc->enable_hwlro)
  rc = oce_alloc_rx_bufs(rq, 960);
 else
  rc = oce_alloc_rx_bufs(rq, rq->cfg.q_len - 1);

 if (rc == 0)
  oce_arm_cq(rq->parent, rq->cq->cq_id, 0, TRUE);

 return rc;
}
