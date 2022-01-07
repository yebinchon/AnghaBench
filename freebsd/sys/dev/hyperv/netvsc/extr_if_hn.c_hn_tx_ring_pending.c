
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {scalar_t__ hn_txdesc_avail; scalar_t__ hn_txdesc_cnt; int hn_txdesc_br; int hn_txlist_spin; } ;


 int buf_ring_full (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static bool
hn_tx_ring_pending(struct hn_tx_ring *txr)
{
 bool pending = 0;


 mtx_lock_spin(&txr->hn_txlist_spin);
 if (txr->hn_txdesc_avail != txr->hn_txdesc_cnt)
  pending = 1;
 mtx_unlock_spin(&txr->hn_txlist_spin);




 return (pending);
}
