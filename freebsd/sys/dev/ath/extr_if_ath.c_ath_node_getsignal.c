
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int (* ic_node_getrssi ) (struct ieee80211_node const*) ;struct ath_softc* ic_softc; } ;
struct ieee80211_node {int ni_chan; struct ieee80211com* ni_ic; } ;
struct ath_softc {struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
typedef int int8_t ;


 int IEEE80211_CHAN_ANYC ;
 int ath_hal_getchannoise (struct ath_hal*,int ) ;
 int stub1 (struct ieee80211_node const*) ;

__attribute__((used)) static void
ath_node_getsignal(const struct ieee80211_node *ni, int8_t *rssi, int8_t *noise)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ath_softc *sc = ic->ic_softc;
 struct ath_hal *ah = sc->sc_ah;

 *rssi = ic->ic_node_getrssi(ni);
 if (ni->ni_chan != IEEE80211_CHAN_ANYC)
  *noise = ath_hal_getchannoise(ah, ni->ni_chan);
 else
  *noise = -95;
}
