
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct ieee80211_channel* ic_bsschan; } ;
struct iwm_softc {struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int ic_flags; } ;
typedef int boolean_t ;


 int FALSE ;
 struct ieee80211_channel* IEEE80211_CHAN_ANYC ;
 int IEEE80211_CHAN_DFS ;
 int TRUE ;

__attribute__((used)) static boolean_t
iwm_mvm_power_is_radar(struct iwm_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_channel *chan;
 boolean_t radar_detect = FALSE;

 chan = ic->ic_bsschan;
 if (chan == IEEE80211_CHAN_ANYC ||
     (chan->ic_flags & IEEE80211_CHAN_DFS) != 0) {
  radar_detect = TRUE;
 }

        return radar_detect;
}
