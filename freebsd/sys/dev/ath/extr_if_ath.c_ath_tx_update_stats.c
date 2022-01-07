
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct TYPE_5__ {int wme_hipri_traffic; } ;
struct ieee80211com {TYPE_1__ ic_wme; } ;
struct ieee80211_node {int ni_inact_reload; int ni_inact; } ;
struct ath_tx_status {int ts_status; size_t ts_antenna; scalar_t__ ts_finaltsi; int ts_flags; int ts_shortretry; int ts_longretry; } ;
struct TYPE_7__ {int ast_tx_shortretry; int ast_tx_longretry; int ast_tx_delim_underrun; int ast_tx_data_underrun; int ast_tx_desccfgerr; int ast_ff_txerr; int ast_tx_timerexpired; int ast_tx_xtxop; int ast_tx_filtered; int ast_tx_fifoerr; int ast_tx_xretries; int ast_tx_altrate; int * ast_ant_tx; } ;
struct ath_softc {TYPE_3__ sc_stats; int * sc_ant_tx; struct ieee80211com sc_ic; } ;
struct TYPE_6__ {int bfs_txflags; } ;
struct ath_buf {TYPE_4__* bf_m; TYPE_2__ bf_state; struct ieee80211_node* bf_node; } ;
struct TYPE_8__ {int m_flags; } ;


 int HAL_TXDESC_NOACK ;
 int HAL_TXERR_FIFO ;
 int HAL_TXERR_FILT ;
 int HAL_TXERR_TIMER_EXPIRED ;
 int HAL_TXERR_XRETRY ;
 int HAL_TXERR_XTXOP ;
 int HAL_TX_DATA_UNDERRUN ;
 int HAL_TX_DELIM_UNDERRUN ;
 int HAL_TX_DESC_CFG_ERR ;
 int M_FF ;
 int M_WME_GETAC (TYPE_4__*) ;
 int WME_AC_VO ;

__attribute__((used)) static void
ath_tx_update_stats(struct ath_softc *sc, struct ath_tx_status *ts,
    struct ath_buf *bf)
{
 struct ieee80211_node *ni = bf->bf_node;
 struct ieee80211com *ic = &sc->sc_ic;
 int sr, lr, pri;

 if (ts->ts_status == 0) {
  u_int8_t txant = ts->ts_antenna;
  sc->sc_stats.ast_ant_tx[txant]++;
  sc->sc_ant_tx[txant]++;
  if (ts->ts_finaltsi != 0)
   sc->sc_stats.ast_tx_altrate++;


  pri = M_WME_GETAC(bf->bf_m);
  if (pri >= WME_AC_VO)
   ic->ic_wme.wme_hipri_traffic++;

  if ((bf->bf_state.bfs_txflags & HAL_TXDESC_NOACK) == 0)
   ni->ni_inact = ni->ni_inact_reload;
 } else {
  if (ts->ts_status & HAL_TXERR_XRETRY)
   sc->sc_stats.ast_tx_xretries++;
  if (ts->ts_status & HAL_TXERR_FIFO)
   sc->sc_stats.ast_tx_fifoerr++;
  if (ts->ts_status & HAL_TXERR_FILT)
   sc->sc_stats.ast_tx_filtered++;
  if (ts->ts_status & HAL_TXERR_XTXOP)
   sc->sc_stats.ast_tx_xtxop++;
  if (ts->ts_status & HAL_TXERR_TIMER_EXPIRED)
   sc->sc_stats.ast_tx_timerexpired++;

  if (bf->bf_m->m_flags & M_FF)
   sc->sc_stats.ast_ff_txerr++;
 }

 if (ts->ts_flags & HAL_TX_DESC_CFG_ERR)
  sc->sc_stats.ast_tx_desccfgerr++;
 if (ts->ts_flags & HAL_TX_DATA_UNDERRUN)
  sc->sc_stats.ast_tx_data_underrun++;
 if (ts->ts_flags & HAL_TX_DELIM_UNDERRUN)
  sc->sc_stats.ast_tx_delim_underrun++;

 sr = ts->ts_shortretry;
 lr = ts->ts_longretry;
 sc->sc_stats.ast_tx_shortretry += sr;
 sc->sc_stats.ast_tx_longretry += lr;

}
