
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {int hn_txeof_task; int hn_tx_taskq; } ;
struct hn_softc {int hn_tx_ring_cnt; int hn_tx_ring_inuse; struct hn_tx_ring* hn_tx_ring; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int hn_resume_tx (struct hn_softc*,int) ;
 int hn_rxfilter_config (struct hn_softc*) ;
 int hn_tx_ring_qflush (struct hn_tx_ring*) ;
 int hn_use_if_start ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
hn_resume_data(struct hn_softc *sc)
{
 int i;

 HN_LOCK_ASSERT(sc);




 hn_rxfilter_config(sc);






 hn_resume_tx(sc, sc->hn_tx_ring_cnt);




 {




  for (i = sc->hn_tx_ring_inuse; i < sc->hn_tx_ring_cnt; ++i)
   hn_tx_ring_qflush(&sc->hn_tx_ring[i]);
 }




 for (i = 0; i < sc->hn_tx_ring_inuse; ++i) {
  struct hn_tx_ring *txr = &sc->hn_tx_ring[i];





  taskqueue_enqueue(txr->hn_tx_taskq, &txr->hn_txeof_task);
 }
}
