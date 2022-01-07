
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int dummy; } ;
struct ath_tx_status {int ts_status; } ;
struct ath_softc {int dummy; } ;
struct ath_rc_series {int dummy; } ;
struct ath_node {int dummy; } ;


 struct ath_node* ATH_NODE (struct ieee80211_node*) ;
 int ATH_NODE_LOCK (struct ath_node*) ;
 int ATH_NODE_UNLOCK (struct ath_node*) ;
 int ATH_NODE_UNLOCK_ASSERT (struct ath_node*) ;
 int HAL_TXERR_FILT ;
 int ath_rate_tx_complete (struct ath_softc*,struct ath_node*,struct ath_rc_series*,struct ath_tx_status*,int,int,int) ;

void
ath_tx_update_ratectrl(struct ath_softc *sc, struct ieee80211_node *ni,
    struct ath_rc_series *rc, struct ath_tx_status *ts, int frmlen,
    int nframes, int nbad)
{
 struct ath_node *an;


 if (ni == ((void*)0))
  return;

 an = ATH_NODE(ni);
 ATH_NODE_UNLOCK_ASSERT(an);

 if ((ts->ts_status & HAL_TXERR_FILT) == 0) {
  ATH_NODE_LOCK(an);
  ath_rate_tx_complete(sc, an, rc, ts, frmlen, nframes, nbad);
  ATH_NODE_UNLOCK(an);
 }
}
