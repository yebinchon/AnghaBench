
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {int hn_tx_lock; scalar_t__ hn_suspended; } ;
struct hn_softc {int hn_tx_ring_cnt; struct hn_tx_ring* hn_tx_ring; } ;


 int KASSERT (int,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
hn_resume_tx(struct hn_softc *sc, int tx_ring_cnt)
{
 int i;

 KASSERT(tx_ring_cnt <= sc->hn_tx_ring_cnt,
     ("invalid TX ring count %d", tx_ring_cnt));

 for (i = 0; i < tx_ring_cnt; ++i) {
  struct hn_tx_ring *txr = &sc->hn_tx_ring[i];

  mtx_lock(&txr->hn_tx_lock);
  txr->hn_suspended = 0;
  mtx_unlock(&txr->hn_tx_lock);
 }
}
