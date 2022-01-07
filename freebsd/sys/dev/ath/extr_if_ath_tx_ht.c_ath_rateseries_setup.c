
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ieee80211com {int ic_flags; } ;
struct ieee80211_node {int ni_capinfo; struct ieee80211com* ni_ic; } ;
struct ath_softc {int sc_cur_txchainmask; TYPE_3__* sc_currates; struct ath_hal* sc_ah; } ;
struct ath_rc_series {scalar_t__ tries; size_t rix; int flags; int tx_power_cap; } ;
struct ath_hal {int dummy; } ;
struct TYPE_8__ {int bfs_al; int bfs_pktlen; scalar_t__ bfs_aggr; struct ath_rc_series* bfs_rc; } ;
struct ath_buf {TYPE_1__ bf_state; } ;
struct TYPE_11__ {scalar_t__ Tries; size_t RateIndex; int RateFlags; int PktDuration; int Rate; int tx_power_cap; int ChSel; } ;
struct TYPE_10__ {TYPE_2__* info; } ;
struct TYPE_9__ {int shortPreamble; int rateCode; } ;
typedef TYPE_3__ HAL_RATE_TABLE ;
typedef scalar_t__ HAL_BOOL ;
typedef TYPE_4__ HAL_11N_RATE_SERIES ;


 scalar_t__ AH_FALSE ;
 scalar_t__ AH_TRUE ;
 int ATH_RC_CW40_FLAG ;
 int ATH_RC_HT_FLAG ;
 int ATH_RC_NUM ;
 int ATH_RC_RTSCTS_FLAG ;
 int ATH_RC_SGI_FLAG ;
 int ATH_RC_STBC_FLAG ;
 int HAL_RATESERIES_2040 ;
 int HAL_RATESERIES_HALFGI ;
 int HAL_RATESERIES_RTS_CTS ;
 int HAL_RATESERIES_STBC ;
 int HT_RC_2_STREAMS (int ) ;
 int IEEE80211_CAPINFO_SHORT_PREAMBLE ;
 int IEEE80211_F_SHPREAMBLE ;
 int ath_computedur_ht (int,int ,int ,int,int) ;
 int ath_hal_computetxtime (struct ath_hal*,TYPE_3__ const*,int,size_t,scalar_t__,scalar_t__) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void
ath_rateseries_setup(struct ath_softc *sc, struct ieee80211_node *ni,
    struct ath_buf *bf, HAL_11N_RATE_SERIES *series)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ath_hal *ah = sc->sc_ah;
 HAL_BOOL shortPreamble = AH_FALSE;
 const HAL_RATE_TABLE *rt = sc->sc_currates;
 int i;
 int pktlen;
 struct ath_rc_series *rc = bf->bf_state.bfs_rc;

 if ((ic->ic_flags & IEEE80211_F_SHPREAMBLE) &&
     (ni->ni_capinfo & IEEE80211_CAPINFO_SHORT_PREAMBLE))
  shortPreamble = AH_TRUE;





 if (bf->bf_state.bfs_aggr)
  pktlen = bf->bf_state.bfs_al;
 else
  pktlen = bf->bf_state.bfs_pktlen;





 memset(series, 0, sizeof(HAL_11N_RATE_SERIES) * 4);
 for (i = 0; i < ATH_RC_NUM; i++) {

  if (rc[i].tries == 0)
   continue;

  series[i].Tries = rc[i].tries;
  series[i].ChSel = sc->sc_cur_txchainmask;




  series[i].Rate = rt->info[rc[i].rix].rateCode;
  series[i].RateIndex = rc[i].rix;
  series[i].tx_power_cap = rc[i].tx_power_cap;




  if (rc[i].flags & ATH_RC_RTSCTS_FLAG)
   series[i].RateFlags |= HAL_RATESERIES_RTS_CTS;




  if (rc[i].flags & ATH_RC_HT_FLAG) {
   if (rc[i].flags & ATH_RC_CW40_FLAG)
    series[i].RateFlags |= HAL_RATESERIES_2040;

   if (rc[i].flags & ATH_RC_SGI_FLAG)
    series[i].RateFlags |= HAL_RATESERIES_HALFGI;

   if (rc[i].flags & ATH_RC_STBC_FLAG)
    series[i].RateFlags |= HAL_RATESERIES_STBC;
  }
  if (rc[i].flags & ATH_RC_HT_FLAG) {
   series[i].PktDuration =
       ath_computedur_ht(pktlen
    , series[i].Rate
    , HT_RC_2_STREAMS(series[i].Rate)
    , series[i].RateFlags & HAL_RATESERIES_2040
    , series[i].RateFlags & HAL_RATESERIES_HALFGI);
  } else {
   if (shortPreamble)
    series[i].Rate |=
        rt->info[rc[i].rix].shortPreamble;

   series[i].PktDuration = ath_hal_computetxtime(ah,
       rt, pktlen, rc[i].rix, shortPreamble, AH_TRUE);
  }
 }
}
