
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct wi_softc {scalar_t__ sc_firmware_type; } ;
struct ieee80211vap {struct ieee80211_txparam* iv_txparms; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_bsschan; } ;
struct ieee80211_txparam {int ucastrate; } ;


 int IEEE80211_FIXED_RATE_NONE ;
 scalar_t__ WI_LUCENT ;
 int WI_RID_TX_RATE ;
 size_t ieee80211_chan2mode (int ) ;
 int wi_write_val (struct wi_softc*,int ,int const) ;

__attribute__((used)) static int
wi_write_txrate(struct wi_softc *sc, struct ieee80211vap *vap)
{
 static const uint16_t lucent_rates[12] = {
     [ 0] = 3,
     [ 1] = 1,
     [ 2] = 2,
     [ 5] = 4,
     [11] = 5
 };
 static const uint16_t intersil_rates[12] = {
     [ 0] = 0xf,
     [ 1] = 0,
     [ 2] = 1,
     [ 5] = 2,
     [11] = 3,
 };
 const uint16_t *rates = sc->sc_firmware_type == WI_LUCENT ?
     lucent_rates : intersil_rates;
 struct ieee80211com *ic = vap->iv_ic;
 const struct ieee80211_txparam *tp;

 tp = &vap->iv_txparms[ieee80211_chan2mode(ic->ic_bsschan)];
 return wi_write_val(sc, WI_RID_TX_RATE,
     (tp->ucastrate == IEEE80211_FIXED_RATE_NONE ?
  rates[0] : rates[tp->ucastrate / 2]));
}
