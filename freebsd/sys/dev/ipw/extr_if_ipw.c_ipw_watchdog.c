
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_vaps; int ic_oerrors; } ;
struct ipw_softc {scalar_t__ sc_tx_timer; scalar_t__ sc_scan_timer; int flags; int sc_wdtimer; int sc_init_task; int sc_dev; struct ieee80211com sc_ic; } ;


 int DPRINTFN (int,char*) ;
 int IPW_FLAG_RUNNING ;
 int IPW_FLAG_SCANNING ;
 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_LOCK_ASSERT (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int TAILQ_FIRST (int *) ;
 int callout_reset (int *,int ,void (*) (void*),struct ipw_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 int ieee80211_scan_done (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
ipw_watchdog(void *arg)
{
 struct ipw_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 IPW_LOCK_ASSERT(sc);

 if (sc->sc_tx_timer > 0) {
  if (--sc->sc_tx_timer == 0) {
   device_printf(sc->sc_dev, "device timeout\n");
   counter_u64_add(ic->ic_oerrors, 1);
   taskqueue_enqueue(taskqueue_swi, &sc->sc_init_task);
  }
 }
 if (sc->sc_scan_timer > 0) {
  if (--sc->sc_scan_timer == 0) {
   DPRINTFN(3, ("Scan timeout\n"));

   if (sc->flags & IPW_FLAG_SCANNING) {
    IPW_UNLOCK(sc);
    ieee80211_scan_done(TAILQ_FIRST(&ic->ic_vaps));
    IPW_LOCK(sc);
    sc->flags &= ~IPW_FLAG_SCANNING;
   }
  }
 }
 if (sc->flags & IPW_FLAG_RUNNING)
  callout_reset(&sc->sc_wdtimer, hz, ipw_watchdog, sc);
}
