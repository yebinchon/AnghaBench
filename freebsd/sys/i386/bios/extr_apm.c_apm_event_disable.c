
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_softc {scalar_t__ initialized; int * event_thread; int mtx; int cv; scalar_t__ running; scalar_t__ active; } ;


 int APM_DPRINT (char*) ;
 int PWAIT ;
 struct apm_softc apm_softc ;
 int cv_broadcast (int *) ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
apm_event_disable(void)
{
 struct apm_softc *sc = &apm_softc;

 APM_DPRINT("called apm_event_disable()\n");

 if (sc == ((void*)0) || sc->initialized == 0)
  return;

 mtx_lock(&sc->mtx);
 sc->active = 0;
 while (sc->running) {
  cv_broadcast(&sc->cv);
  msleep(sc->event_thread, &sc->mtx, PWAIT, "apmdie", 0);
 }
 mtx_unlock(&sc->mtx);
 sc->event_thread = ((void*)0);
 return;
}
