
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_txdesc {int refs; scalar_t__ chim_index; scalar_t__ chim_size; int flags; int agg_list; int * m; } ;
struct hn_tx_ring {scalar_t__ hn_txdesc_avail; int hn_txdesc_br; int hn_txlist_spin; int hn_txlist; } ;


 scalar_t__ HN_NVS_CHIM_IDX_INVALID ;
 int HN_TXD_FLAG_DMAMAP ;
 int HN_TXD_FLAG_ONAGG ;
 int HN_TXD_FLAG_ONLIST ;
 int KASSERT (int,char*) ;
 struct hn_txdesc* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int atomic_subtract_int (scalar_t__*,int) ;
 struct hn_txdesc* buf_ring_dequeue_sc (int ) ;
 int link ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static __inline struct hn_txdesc *
hn_txdesc_get(struct hn_tx_ring *txr)
{
 struct hn_txdesc *txd;


 mtx_lock_spin(&txr->hn_txlist_spin);
 txd = SLIST_FIRST(&txr->hn_txlist);
 if (txd != ((void*)0)) {
  KASSERT(txr->hn_txdesc_avail > 0,
      ("txdesc_get: invalid txd avail %d", txr->hn_txdesc_avail));
  txr->hn_txdesc_avail--;
  SLIST_REMOVE_HEAD(&txr->hn_txlist, link);
 }
 mtx_unlock_spin(&txr->hn_txlist_spin);




 if (txd != ((void*)0)) {





  KASSERT(txd->m == ((void*)0) && txd->refs == 0 &&
      STAILQ_EMPTY(&txd->agg_list) &&
      txd->chim_index == HN_NVS_CHIM_IDX_INVALID &&
      txd->chim_size == 0 &&
      (txd->flags & HN_TXD_FLAG_ONLIST) &&
      (txd->flags & HN_TXD_FLAG_ONAGG) == 0 &&
      (txd->flags & HN_TXD_FLAG_DMAMAP) == 0, ("invalid txd"));
  txd->flags &= ~HN_TXD_FLAG_ONLIST;
  txd->refs = 1;
 }
 return txd;
}
