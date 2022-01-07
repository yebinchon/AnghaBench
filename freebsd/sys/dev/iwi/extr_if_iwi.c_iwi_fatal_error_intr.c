
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_vaps; } ;
struct iwi_softc {scalar_t__ sc_busy_timer; int flags; int sc_restarttask; int sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int dummy; } ;


 int IWI_FLAG_BUSY ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int device_printf (int ,char*) ;
 int ieee80211_cancel_scan (struct ieee80211vap*) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int wakeup (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_fatal_error_intr(struct iwi_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 device_printf(sc->sc_dev, "firmware error\n");
 if (vap != ((void*)0))
  ieee80211_cancel_scan(vap);
 ieee80211_runtask(ic, &sc->sc_restarttask);

 sc->flags &= ~IWI_FLAG_BUSY;
 sc->sc_busy_timer = 0;
 wakeup(sc);
}
