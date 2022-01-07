
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {int sc_flags; scalar_t__ wi_gone; } ;
struct ieee80211com {scalar_t__ ic_nrunning; scalar_t__ ic_opmode; scalar_t__ ic_promisc; struct wi_softc* ic_softc; } ;


 scalar_t__ IEEE80211_M_HOSTAP ;
 int WI_FLAGS_PROMISC ;
 int WI_FLAGS_RUNNING ;
 int WI_LOCK (struct wi_softc*) ;
 int WI_RID_PROMISC ;
 int WI_UNLOCK (struct wi_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int wi_init (struct wi_softc*) ;
 int wi_stop (struct wi_softc*,int) ;
 int wi_write_val (struct wi_softc*,int ,int) ;

__attribute__((used)) static void
wi_parent(struct ieee80211com *ic)
{
 struct wi_softc *sc = ic->ic_softc;
 int startall = 0;

 WI_LOCK(sc);





 if (ic->ic_nrunning > 0) {
  if (ic->ic_opmode != IEEE80211_M_HOSTAP &&
      sc->sc_flags & WI_FLAGS_RUNNING) {
   if (ic->ic_promisc > 0 &&
       (sc->sc_flags & WI_FLAGS_PROMISC) == 0) {
    wi_write_val(sc, WI_RID_PROMISC, 1);
    sc->sc_flags |= WI_FLAGS_PROMISC;
   } else if (ic->ic_promisc == 0 &&
       (sc->sc_flags & WI_FLAGS_PROMISC) != 0) {
    wi_write_val(sc, WI_RID_PROMISC, 0);
    sc->sc_flags &= ~WI_FLAGS_PROMISC;
   } else {
    wi_init(sc);
    startall = 1;
   }
  } else {
   wi_init(sc);
   startall = 1;
  }
 } else if (sc->sc_flags & WI_FLAGS_RUNNING) {
  wi_stop(sc, 1);
  sc->wi_gone = 0;
 }
 WI_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
