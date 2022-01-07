
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_promisc; struct bwn_softc* ic_softc; } ;
struct bwn_softc {int sc_filters; struct bwn_mac* sc_curmac; } ;
struct bwn_mac {scalar_t__ mac_status; } ;


 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_MACCTL_PROMISC ;
 scalar_t__ BWN_MAC_STATUS_INITED ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int bwn_set_opmode (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_update_promisc(struct ieee80211com *ic)
{
 struct bwn_softc *sc = ic->ic_softc;
 struct bwn_mac *mac = sc->sc_curmac;

 BWN_LOCK(sc);
 mac = sc->sc_curmac;
 if (mac != ((void*)0) && mac->mac_status >= BWN_MAC_STATUS_INITED) {
  if (ic->ic_promisc > 0)
   sc->sc_filters |= BWN_MACCTL_PROMISC;
  else
   sc->sc_filters &= ~BWN_MACCTL_PROMISC;
  bwn_set_opmode(mac);
 }
 BWN_UNLOCK(sc);
}
