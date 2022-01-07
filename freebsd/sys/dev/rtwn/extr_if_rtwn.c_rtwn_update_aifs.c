
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct wmeParams {size_t wmep_aifsn; } ;
struct TYPE_2__ {struct ieee80211_channel* ic_curchan; } ;
struct rtwn_softc {struct wmeParams* cap_wmeParams; TYPE_1__ sc_ic; } ;
struct ieee80211_channel {int dummy; } ;


 size_t IEEE80211_DUR_OFDM_SIFS ;
 size_t IEEE80211_DUR_SIFS ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 size_t WME_AC_BE ;
 size_t WME_NUM_AC ;
 int rtwn_write_1 (struct rtwn_softc*,int ,size_t) ;
 int * wme2reg ;

__attribute__((used)) static void
rtwn_update_aifs(struct rtwn_softc *sc, uint8_t slottime)
{
 struct ieee80211_channel *c = sc->sc_ic.ic_curchan;
 const struct wmeParams *wmep = sc->cap_wmeParams;
 uint8_t aifs, ac;

 for (ac = WME_AC_BE; ac < WME_NUM_AC; ac++) {

  aifs = wmep[ac].wmep_aifsn * slottime +
      (IEEE80211_IS_CHAN_5GHZ(c) ?
   IEEE80211_DUR_OFDM_SIFS : IEEE80211_DUR_SIFS);
  rtwn_write_1(sc, wme2reg[ac], aifs);
 }
}
