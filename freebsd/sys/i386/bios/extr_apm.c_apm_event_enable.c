
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_softc {scalar_t__ initialized; int active; int event_thread; } ;


 int APM_DPRINT (char*) ;
 int apm_event_thread ;
 struct apm_softc apm_softc ;
 scalar_t__ kproc_create (int ,struct apm_softc*,int *,int ,int ,char*) ;
 int panic (char*) ;

__attribute__((used)) static void
apm_event_enable(void)
{
 struct apm_softc *sc = &apm_softc;

 APM_DPRINT("called apm_event_enable()\n");

 if (sc == ((void*)0) || sc->initialized == 0)
  return;


 sc->active = 1;
 if (kproc_create(apm_event_thread, sc, &sc->event_thread, 0, 0,
     "apm worker"))
  panic("Cannot create apm worker thread");

 return;
}
