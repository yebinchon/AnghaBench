
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtnet_softc {scalar_t__ vtnet_act_vq_pairs; struct ifnet* vtnet_ifp; } ;
struct TYPE_2__ {int vrxs_rescheduled; } ;
struct vtnet_rxq {scalar_t__ vtnrx_id; int vtnrx_intrtask; int vtnrx_tq; TYPE_1__ vtnrx_stats; struct vtnet_softc* vtnrx_sc; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 scalar_t__ NM_IRQ_PASS ;
 int VTNET_INTR_DISABLE_RETRIES ;
 int VTNET_RXQ_LOCK (struct vtnet_rxq*) ;
 int VTNET_RXQ_UNLOCK (struct vtnet_rxq*) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ netmap_rx_irq (struct ifnet*,scalar_t__,int*) ;
 int taskqueue_enqueue (int ,int *) ;
 int vtnet_rxq_disable_intr (struct vtnet_rxq*) ;
 scalar_t__ vtnet_rxq_enable_intr (struct vtnet_rxq*) ;
 int vtnet_rxq_eof (struct vtnet_rxq*) ;

__attribute__((used)) static void
vtnet_rx_vq_intr(void *xrxq)
{
 struct vtnet_softc *sc;
 struct vtnet_rxq *rxq;
 struct ifnet *ifp;
 int tries, more;

 rxq = xrxq;
 sc = rxq->vtnrx_sc;
 ifp = sc->vtnet_ifp;
 tries = 0;

 if (__predict_false(rxq->vtnrx_id >= sc->vtnet_act_vq_pairs)) {






  vtnet_rxq_disable_intr(rxq);
  return;
 }






 VTNET_RXQ_LOCK(rxq);

again:
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  VTNET_RXQ_UNLOCK(rxq);
  return;
 }

 more = vtnet_rxq_eof(rxq);
 if (more || vtnet_rxq_enable_intr(rxq) != 0) {
  if (!more)
   vtnet_rxq_disable_intr(rxq);




  if (tries++ < VTNET_INTR_DISABLE_RETRIES)
   goto again;

  VTNET_RXQ_UNLOCK(rxq);
  rxq->vtnrx_stats.vrxs_rescheduled++;
  taskqueue_enqueue(rxq->vtnrx_tq, &rxq->vtnrx_intrtask);
 } else
  VTNET_RXQ_UNLOCK(rxq);
}
