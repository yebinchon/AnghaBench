
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct oce_rq {int pending; TYPE_1__* cq; } ;
struct TYPE_6__ {int enable_hwlro; } ;
struct TYPE_5__ {int cq_id; } ;
typedef TYPE_2__* POCE_SOFTC ;


 int FALSE ;
 int OCE_RQ_PACKET_ARRAY_SIZE ;
 int oce_alloc_rx_bufs (struct oce_rq*,int) ;
 int oce_arm_cq (TYPE_2__*,int ,scalar_t__,int ) ;

__attribute__((used)) static void
oce_check_rx_bufs(POCE_SOFTC sc, uint32_t num_cqes, struct oce_rq *rq)
{
        if (num_cqes) {
                oce_arm_cq(sc, rq->cq->cq_id, num_cqes, FALSE);
  if(!sc->enable_hwlro) {
   if((OCE_RQ_PACKET_ARRAY_SIZE - rq->pending) > 1)
    oce_alloc_rx_bufs(rq, ((OCE_RQ_PACKET_ARRAY_SIZE - rq->pending) - 1));
  }else {
                 if ((OCE_RQ_PACKET_ARRAY_SIZE -1 - rq->pending) > 64)
                         oce_alloc_rx_bufs(rq, 64);
         }
 }

        return;
}
