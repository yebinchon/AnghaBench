
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_softc {scalar_t__ sc_btcoex_mci; } ;


 int ath_btcoex_mci_enable (struct ath_softc*,struct ieee80211_channel const*) ;

int
ath_btcoex_enable(struct ath_softc *sc, const struct ieee80211_channel *chan)
{
 if (sc->sc_btcoex_mci) {
  ath_btcoex_mci_enable(sc, chan);
 }

 return (0);
}
