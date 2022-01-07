
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_vaps; } ;
struct ipw_softc {int sc_init_task; int sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int dummy; } ;


 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int device_printf (int ,char*) ;
 int ieee80211_cancel_scan (struct ieee80211vap*) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;

__attribute__((used)) static void
ipw_fatal_error_intr(struct ipw_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 device_printf(sc->sc_dev, "firmware error\n");
 if (vap != ((void*)0)) {
  IPW_UNLOCK(sc);
  ieee80211_cancel_scan(vap);
  IPW_LOCK(sc);
 }
 ieee80211_runtask(ic, &sc->sc_init_task);
}
