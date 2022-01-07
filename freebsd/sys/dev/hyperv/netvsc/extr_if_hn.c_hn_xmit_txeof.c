
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {int hn_txeof_task; int hn_tx_taskq; scalar_t__ hn_oactive; int hn_tx_task; int hn_tx_lock; int hn_direct_tx_size; scalar_t__ hn_sched_tx; } ;


 int hn_xmit (struct hn_tx_ring*,int ) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
hn_xmit_txeof(struct hn_tx_ring *txr)
{

 if (txr->hn_sched_tx)
  goto do_sched;

 if (mtx_trylock(&txr->hn_tx_lock)) {
  int sched;

  txr->hn_oactive = 0;
  sched = hn_xmit(txr, txr->hn_direct_tx_size);
  mtx_unlock(&txr->hn_tx_lock);
  if (sched) {
   taskqueue_enqueue(txr->hn_tx_taskq,
       &txr->hn_tx_task);
  }
 } else {
do_sched:






  txr->hn_oactive = 0;
  taskqueue_enqueue(txr->hn_tx_taskq, &txr->hn_txeof_task);
 }
}
