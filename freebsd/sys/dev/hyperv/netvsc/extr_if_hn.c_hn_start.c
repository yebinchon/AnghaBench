
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct hn_softc* if_softc; } ;
struct hn_tx_ring {int hn_tx_task; int hn_tx_taskq; int hn_tx_lock; int hn_direct_tx_size; scalar_t__ hn_sched_tx; } ;
struct hn_softc {struct hn_tx_ring* hn_tx_ring; } ;


 int hn_start_locked (struct hn_tx_ring*,int ) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
hn_start(struct ifnet *ifp)
{
 struct hn_softc *sc = ifp->if_softc;
 struct hn_tx_ring *txr = &sc->hn_tx_ring[0];

 if (txr->hn_sched_tx)
  goto do_sched;

 if (mtx_trylock(&txr->hn_tx_lock)) {
  int sched;

  sched = hn_start_locked(txr, txr->hn_direct_tx_size);
  mtx_unlock(&txr->hn_tx_lock);
  if (!sched)
   return;
 }
do_sched:
 taskqueue_enqueue(txr->hn_tx_taskq, &txr->hn_tx_task);
}
