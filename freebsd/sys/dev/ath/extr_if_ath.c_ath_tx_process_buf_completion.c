
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_node {int dummy; } ;
struct ath_txq {int dummy; } ;
struct ath_tx_status {int ts_status; } ;
struct ath_softc {int dummy; } ;
struct TYPE_2__ {int bfs_txflags; int bfs_pktlen; int bfs_rc; } ;
struct ath_buf {int (* bf_comp ) (struct ath_softc*,struct ath_buf*,int ) ;TYPE_1__ bf_state; struct ieee80211_node* bf_node; } ;


 int ATH_TXQ_UNLOCK_ASSERT (struct ath_txq*) ;
 int ATH_TX_UNLOCK_ASSERT (struct ath_softc*) ;
 int HAL_TXDESC_NOACK ;
 int HAL_TXERR_FILT ;
 int ath_tx_default_comp (struct ath_softc*,struct ath_buf*,int ) ;
 int ath_tx_update_ratectrl (struct ath_softc*,struct ieee80211_node*,int ,struct ath_tx_status*,int ,int,int) ;
 int ath_tx_update_stats (struct ath_softc*,struct ath_tx_status*,struct ath_buf*) ;
 int stub1 (struct ath_softc*,struct ath_buf*,int ) ;

void
ath_tx_process_buf_completion(struct ath_softc *sc, struct ath_txq *txq,
    struct ath_tx_status *ts, struct ath_buf *bf)
{
 struct ieee80211_node *ni = bf->bf_node;

 ATH_TX_UNLOCK_ASSERT(sc);
 ATH_TXQ_UNLOCK_ASSERT(txq);


 if (ni != ((void*)0)) {

  ath_tx_update_stats(sc, ts, bf);
 }
 if (bf->bf_comp == ((void*)0)) {
  if ((ts->ts_status & HAL_TXERR_FILT) == 0 &&
      (bf->bf_state.bfs_txflags & HAL_TXDESC_NOACK) == 0) {




   ath_tx_update_ratectrl(sc, ni,
        bf->bf_state.bfs_rc, ts,
       bf->bf_state.bfs_pktlen, 1,
       (ts->ts_status == 0 ? 0 : 1));
  }
  ath_tx_default_comp(sc, bf, 0);
 } else
  bf->bf_comp(sc, bf, 0);
}
