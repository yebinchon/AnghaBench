
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_opmode; struct ath_softc* ic_softc; } ;
struct ath_softc {int sc_updateslot; } ;


 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_MBSS ;
 int UPDATE ;
 int ath_setslottime (struct ath_softc*) ;

__attribute__((used)) static void
ath_updateslot(struct ieee80211com *ic)
{
 struct ath_softc *sc = ic->ic_softc;
 if (ic->ic_opmode == IEEE80211_M_HOSTAP ||
     ic->ic_opmode == IEEE80211_M_MBSS)
  sc->sc_updateslot = UPDATE;
 else
  ath_setslottime(sc);
}
