
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ jj_offset; } ;
struct TYPE_3__ {scalar_t__ jj_offset; } ;
struct g_journal_softc {scalar_t__ sc_journal_offset; int sc_jend; int sc_jstart; int sc_name; TYPE_2__ sc_inactive; TYPE_1__ sc_active; scalar_t__ sc_id; } ;
typedef int off_t ;
typedef int intmax_t ;


 int GJ_DEBUG (int,char*,int ,int) ;
 int KASSERT (int,char*) ;
 int g_journal_cache_mtx ;
 int g_journal_force_switch ;
 int g_journal_stats_journal_full ;
 int g_journal_switcher_state ;
 int g_journal_switcher_wokenup ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,unsigned int,int ,int ,int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
g_journal_check_overflow(struct g_journal_softc *sc)
{
 off_t length, used;

 if ((sc->sc_active.jj_offset < sc->sc_inactive.jj_offset &&
      sc->sc_journal_offset >= sc->sc_inactive.jj_offset) ||
     (sc->sc_active.jj_offset > sc->sc_inactive.jj_offset &&
      sc->sc_journal_offset >= sc->sc_inactive.jj_offset &&
      sc->sc_journal_offset < sc->sc_active.jj_offset)) {
  panic("Journal overflow "
      "(id = %u joffset=%jd active=%jd inactive=%jd)",
      (unsigned)sc->sc_id,
      (intmax_t)sc->sc_journal_offset,
      (intmax_t)sc->sc_active.jj_offset,
      (intmax_t)sc->sc_inactive.jj_offset);
 }
 if (sc->sc_active.jj_offset < sc->sc_inactive.jj_offset) {
  length = sc->sc_inactive.jj_offset - sc->sc_active.jj_offset;
  used = sc->sc_journal_offset - sc->sc_active.jj_offset;
 } else {
  length = sc->sc_jend - sc->sc_active.jj_offset;
  length += sc->sc_inactive.jj_offset - sc->sc_jstart;
  if (sc->sc_journal_offset >= sc->sc_active.jj_offset)
   used = sc->sc_journal_offset - sc->sc_active.jj_offset;
  else {
   used = sc->sc_jend - sc->sc_active.jj_offset;
   used += sc->sc_journal_offset - sc->sc_jstart;
  }
 }

 if (g_journal_switcher_wokenup)
  return;




 KASSERT(length > 0,
     ("length=%jd used=%jd active=%jd inactive=%jd joffset=%jd",
     (intmax_t)length, (intmax_t)used,
     (intmax_t)sc->sc_active.jj_offset,
     (intmax_t)sc->sc_inactive.jj_offset,
     (intmax_t)sc->sc_journal_offset));
 if ((used * 100) / length > g_journal_force_switch) {
  g_journal_stats_journal_full++;
  GJ_DEBUG(1, "Journal %s %jd%% full, forcing journal switch.",
      sc->sc_name, (used * 100) / length);
  mtx_lock(&g_journal_cache_mtx);
  g_journal_switcher_wokenup = 1;
  wakeup(&g_journal_switcher_state);
  mtx_unlock(&g_journal_cache_mtx);
 }
}
