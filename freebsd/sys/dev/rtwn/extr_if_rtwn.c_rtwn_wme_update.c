
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wmeParams {int wmep_aifsn; int wmep_txopLimit; int wmep_logcwmin; int wmep_logcwmax; int wmep_acm; } ;
struct rtwn_softc {struct wmeParams* cap_wmeParams; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; struct ieee80211_channel* ic_curchan; } ;
struct ieee80211_channel {int dummy; } ;
struct chanAccParams {int cap_wmeParams; } ;


 int IEEE80211_DUR_OFDM_SIFS ;
 int IEEE80211_DUR_SIFS ;
 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int R92C_ACMHWCTRL ;
 int R92C_ACMHWCTRL_ACM_MASK ;
 int R92C_ACMHWCTRL_EN ;
 int R92C_EDCA_PARAM_AIFS ;
 int R92C_EDCA_PARAM_ECWMAX ;
 int R92C_EDCA_PARAM_ECWMIN ;
 int R92C_EDCA_PARAM_TXOP ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int SM (int ,int) ;
 int WME_AC_BE ;
 int WME_NUM_AC ;
 int ieee80211_wme_ic_getparams (struct ieee80211com*,struct chanAccParams*) ;
 int memcpy (struct wmeParams*,int ,int) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;
 int * wme2reg ;

__attribute__((used)) static int
rtwn_wme_update(struct ieee80211com *ic)
{
 struct chanAccParams chp;
 struct ieee80211_channel *c = ic->ic_curchan;
 struct rtwn_softc *sc = ic->ic_softc;
 struct wmeParams *wmep = sc->cap_wmeParams;
 uint8_t aifs, acm, slottime;
 int ac;

 ieee80211_wme_ic_getparams(ic, &chp);


 IEEE80211_LOCK(ic);
 RTWN_LOCK(sc);
 memcpy(wmep, chp.cap_wmeParams, sizeof(sc->cap_wmeParams));
 RTWN_UNLOCK(sc);
 IEEE80211_UNLOCK(ic);

 acm = 0;
 slottime = IEEE80211_GET_SLOTTIME(ic);

 RTWN_LOCK(sc);
 for (ac = WME_AC_BE; ac < WME_NUM_AC; ac++) {

  aifs = wmep[ac].wmep_aifsn * slottime +
      (IEEE80211_IS_CHAN_5GHZ(c) ?
   IEEE80211_DUR_OFDM_SIFS : IEEE80211_DUR_SIFS);
  rtwn_write_4(sc, wme2reg[ac],
      SM(R92C_EDCA_PARAM_TXOP, wmep[ac].wmep_txopLimit) |
      SM(R92C_EDCA_PARAM_ECWMIN, wmep[ac].wmep_logcwmin) |
      SM(R92C_EDCA_PARAM_ECWMAX, wmep[ac].wmep_logcwmax) |
      SM(R92C_EDCA_PARAM_AIFS, aifs));
  if (ac != WME_AC_BE)
   acm |= wmep[ac].wmep_acm << ac;
 }

 if (acm != 0)
  acm |= R92C_ACMHWCTRL_EN;
 rtwn_setbits_1(sc, R92C_ACMHWCTRL, R92C_ACMHWCTRL_ACM_MASK, acm);
 RTWN_UNLOCK(sc);

 return 0;
}
