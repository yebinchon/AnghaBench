
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_journal_softc {scalar_t__ sc_flush_in_progress; scalar_t__ sc_copy_in_progress; scalar_t__ sc_flush_count; scalar_t__ sc_delayed_count; int sc_flags; int sc_name; int sc_mtx; int sc_journal_copying; } ;
struct bintime {int dummy; } ;


 int GJF_DEVICE_BEFORE_SWITCH ;
 int GJF_DEVICE_SWITCH ;
 int GJ_DEBUG (int,char*,scalar_t__) ;
 int GJ_TIMER_START (int,struct bintime*) ;
 int GJ_TIMER_STOP (int,struct bintime*,char*,int ) ;
 int MA_OWNED ;
 int PRIBIO ;
 int g_journal_debug ;
 int g_journal_stats_switches ;
 int g_journal_stats_wait_for_copy ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;
 int wakeup (struct g_journal_softc*) ;

__attribute__((used)) static void
g_journal_switch_wait(struct g_journal_softc *sc)
{
 struct bintime bt;

 mtx_assert(&sc->sc_mtx, MA_OWNED);
 if (g_journal_debug >= 2) {
  if (sc->sc_flush_in_progress > 0) {
   GJ_DEBUG(2, "%d requests flushing.",
       sc->sc_flush_in_progress);
  }
  if (sc->sc_copy_in_progress > 0) {
   GJ_DEBUG(2, "%d requests copying.",
       sc->sc_copy_in_progress);
  }
  if (sc->sc_flush_count > 0) {
   GJ_DEBUG(2, "%d requests to flush.",
       sc->sc_flush_count);
  }
  if (sc->sc_delayed_count > 0) {
   GJ_DEBUG(2, "%d requests delayed.",
       sc->sc_delayed_count);
  }
 }
 g_journal_stats_switches++;
 if (sc->sc_copy_in_progress > 0)
  g_journal_stats_wait_for_copy++;
 GJ_TIMER_START(1, &bt);
 sc->sc_flags &= ~GJF_DEVICE_BEFORE_SWITCH;
 sc->sc_flags |= GJF_DEVICE_SWITCH;
 wakeup(sc);
 while (sc->sc_flags & GJF_DEVICE_SWITCH) {
  msleep(&sc->sc_journal_copying, &sc->sc_mtx, PRIBIO,
      "gj:switch", 0);
 }
 GJ_TIMER_STOP(1, &bt, "Switch time of %s", sc->sc_name);
}
