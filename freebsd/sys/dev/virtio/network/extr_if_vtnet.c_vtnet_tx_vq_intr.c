
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {scalar_t__ vtntx_id; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {scalar_t__ vtnet_act_vq_pairs; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 scalar_t__ NM_IRQ_PASS ;
 int VTNET_TXQ_LOCK (struct vtnet_txq*) ;
 int VTNET_TXQ_UNLOCK (struct vtnet_txq*) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ netmap_tx_irq (struct ifnet*,scalar_t__) ;
 int vtnet_txq_disable_intr (struct vtnet_txq*) ;
 int vtnet_txq_eof (struct vtnet_txq*) ;
 int vtnet_txq_start (struct vtnet_txq*) ;

__attribute__((used)) static void
vtnet_tx_vq_intr(void *xtxq)
{
 struct vtnet_softc *sc;
 struct vtnet_txq *txq;
 struct ifnet *ifp;

 txq = xtxq;
 sc = txq->vtntx_sc;
 ifp = sc->vtnet_ifp;

 if (__predict_false(txq->vtntx_id >= sc->vtnet_act_vq_pairs)) {






  vtnet_txq_disable_intr(txq);
  return;
 }






 VTNET_TXQ_LOCK(txq);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  VTNET_TXQ_UNLOCK(txq);
  return;
 }

 vtnet_txq_eof(txq);
 vtnet_txq_start(txq);

 VTNET_TXQ_UNLOCK(txq);
}
