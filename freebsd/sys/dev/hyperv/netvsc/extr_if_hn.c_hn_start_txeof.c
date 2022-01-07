
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct hn_tx_ring {int hn_txeof_task; int hn_tx_taskq; int hn_tx_task; int hn_tx_lock; int hn_direct_tx_size; scalar_t__ hn_sched_tx; struct hn_softc* hn_sc; } ;
struct hn_softc {struct hn_tx_ring* hn_tx_ring; struct ifnet* hn_ifp; } ;


 int IFF_DRV_OACTIVE ;
 int KASSERT (int,char*) ;
 int atomic_clear_int (int *,int ) ;
 int hn_start_locked (struct hn_tx_ring*,int ) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
hn_start_txeof(struct hn_tx_ring *txr)
{
 struct hn_softc *sc = txr->hn_sc;
 struct ifnet *ifp = sc->hn_ifp;

 KASSERT(txr == &sc->hn_tx_ring[0], ("not the first TX ring"));

 if (txr->hn_sched_tx)
  goto do_sched;

 if (mtx_trylock(&txr->hn_tx_lock)) {
  int sched;

  atomic_clear_int(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
  sched = hn_start_locked(txr, txr->hn_direct_tx_size);
  mtx_unlock(&txr->hn_tx_lock);
  if (sched) {
   taskqueue_enqueue(txr->hn_tx_taskq,
       &txr->hn_tx_task);
  }
 } else {
do_sched:






  atomic_clear_int(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
  taskqueue_enqueue(txr->hn_tx_taskq, &txr->hn_txeof_task);
 }
}
