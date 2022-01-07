
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_tx_ampdu {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ath_tid {int tid; } ;
struct TYPE_6__ {int ast_tx_aggr_fail; int ast_tx_aggr_failall; } ;
struct ath_softc {TYPE_3__ sc_stats; } ;
struct ath_node {int dummy; } ;
struct TYPE_5__ {int bfs_nframes; int bfs_pktlen; int bfs_rc; } ;
struct TYPE_4__ {int ds_txstat; } ;
struct ath_buf {struct ath_buf* bf_next; TYPE_2__ bf_state; TYPE_1__ bf_status; struct ieee80211_node* bf_node; } ;
typedef int ath_bufhead ;


 struct ath_node* ATH_NODE (struct ieee80211_node*) ;
 int ATH_TID_INSERT_HEAD (struct ath_tid*,struct ath_buf*,int ) ;
 int ATH_TX_LOCK (struct ath_softc*) ;
 int ATH_TX_UNLOCK (struct ath_softc*) ;
 struct ath_buf* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct ath_buf*,int ) ;
 struct ath_buf* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,struct ath_buf*,int ) ;
 int ath_bufhead_s ;
 int ath_tx_default_comp (struct ath_softc*,struct ath_buf*,int ) ;
 struct ieee80211_tx_ampdu* ath_tx_get_tx_tid (struct ath_node*,int ) ;
 scalar_t__ ath_tx_retry_subframe (struct ath_softc*,struct ath_buf*,int *) ;
 int ath_tx_tid_bar_suspend (struct ath_softc*,struct ath_tid*) ;
 int ath_tx_tid_bar_tx (struct ath_softc*,struct ath_tid*) ;
 scalar_t__ ath_tx_tid_bar_tx_ready (struct ath_softc*,struct ath_tid*) ;
 int ath_tx_tid_sched (struct ath_softc*,struct ath_tid*) ;
 int ath_tx_update_ratectrl (struct ath_softc*,struct ieee80211_node*,int ,int *,int ,int ,int ) ;
 int bf_list ;

__attribute__((used)) static void
ath_tx_comp_aggr_error(struct ath_softc *sc, struct ath_buf *bf_first,
    struct ath_tid *tid)
{
 struct ieee80211_node *ni = bf_first->bf_node;
 struct ath_node *an = ATH_NODE(ni);
 struct ath_buf *bf_next, *bf;
 ath_bufhead bf_q;
 int drops = 0;
 struct ieee80211_tx_ampdu *tap;
 ath_bufhead bf_cq;

 TAILQ_INIT(&bf_q);
 TAILQ_INIT(&bf_cq);







 ath_tx_update_ratectrl(sc, ni, bf_first->bf_state.bfs_rc,
     &bf_first->bf_status.ds_txstat,
     bf_first->bf_state.bfs_pktlen,
     bf_first->bf_state.bfs_nframes, bf_first->bf_state.bfs_nframes);

 ATH_TX_LOCK(sc);
 tap = ath_tx_get_tx_tid(an, tid->tid);
 sc->sc_stats.ast_tx_aggr_failall++;


 bf = bf_first;
 while (bf) {
  bf_next = bf->bf_next;
  bf->bf_next = ((void*)0);
  sc->sc_stats.ast_tx_aggr_fail++;
  if (ath_tx_retry_subframe(sc, bf, &bf_q)) {
   drops++;
   bf->bf_next = ((void*)0);
   TAILQ_INSERT_TAIL(&bf_cq, bf, bf_list);
  }
  bf = bf_next;
 }


 while ((bf = TAILQ_LAST(&bf_q, ath_bufhead_s)) != ((void*)0)) {
  TAILQ_REMOVE(&bf_q, bf, bf_list);
  ATH_TID_INSERT_HEAD(tid, bf, bf_list);
 }




 ath_tx_tid_sched(sc, tid);
 if (drops) {

  ath_tx_tid_bar_suspend(sc, tid);
 }




 if (ath_tx_tid_bar_tx_ready(sc, tid))
  ath_tx_tid_bar_tx(sc, tid);

 ATH_TX_UNLOCK(sc);


 while ((bf = TAILQ_FIRST(&bf_cq)) != ((void*)0)) {
  TAILQ_REMOVE(&bf_cq, bf, bf_list);
  ath_tx_default_comp(sc, bf, 0);
 }
}
