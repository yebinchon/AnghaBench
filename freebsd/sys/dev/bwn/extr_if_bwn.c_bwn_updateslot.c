
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct bwn_softc* ic_softc; } ;
struct bwn_softc {int sc_flags; scalar_t__ sc_curmac; } ;
struct bwn_mac {int dummy; } ;


 int BWN_FLAG_RUNNING ;
 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 int bwn_set_slot_time (struct bwn_mac*,int ) ;

__attribute__((used)) static void
bwn_updateslot(struct ieee80211com *ic)
{
 struct bwn_softc *sc = ic->ic_softc;
 struct bwn_mac *mac;

 BWN_LOCK(sc);
 if (sc->sc_flags & BWN_FLAG_RUNNING) {
  mac = (struct bwn_mac *)sc->sc_curmac;
  bwn_set_slot_time(mac, IEEE80211_GET_SLOTTIME(ic));
 }
 BWN_UNLOCK(sc);
}
