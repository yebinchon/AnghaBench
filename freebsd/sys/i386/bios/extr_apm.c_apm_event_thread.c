
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_softc {int running; int mtx; int cv; int bios_busy; int suspend_countdown; scalar_t__ suspends; int standby_countdown; scalar_t__ standbys; scalar_t__ active; } ;


 int apm_do_standby () ;
 int apm_do_suspend () ;
 int apm_lastreq_notify () ;
 scalar_t__ apm_op_inprog ;
 int apm_processevent () ;
 struct apm_softc apm_softc ;
 int cv_timedwait (int *,int *,int) ;
 int hz ;
 int kproc_exit (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
apm_event_thread(void *arg)
{
 struct apm_softc *sc = &apm_softc;

 sc->running = 1;
 while (sc->active) {
  if (apm_op_inprog)
   apm_lastreq_notify();
  if (sc->standbys && sc->standby_countdown-- <= 0)
   apm_do_standby();
  if (sc->suspends && sc->suspend_countdown-- <= 0)
   apm_do_suspend();
  if (!sc->bios_busy)
   apm_processevent();
  mtx_lock(&sc->mtx);
  cv_timedwait(&sc->cv, &sc->mtx, 10 * hz / 9);
  mtx_unlock(&sc->mtx);
 }
 sc->running = 0;
 kproc_exit(0);
}
