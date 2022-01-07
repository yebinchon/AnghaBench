
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_softc {scalar_t__ initialized; scalar_t__ suspending; } ;


 size_t APM_HOOK_RESUME ;
 int DEVICE_RESUME (int ) ;
 int EVENTHANDLER_INVOKE (int ) ;
 int Giant ;
 int apm_execute_hook (int ) ;
 struct apm_softc apm_softc ;
 int * hook ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int power_resume ;
 int root_bus ;

__attribute__((used)) static void
apm_resume(void)
{
 struct apm_softc *sc = &apm_softc;

 if (sc == ((void*)0) || sc->initialized == 0 || sc->suspending == 0)
  return;

 sc->suspending = 0;
 apm_execute_hook(hook[APM_HOOK_RESUME]);
 mtx_lock(&Giant);
 DEVICE_RESUME(root_bus);
 mtx_unlock(&Giant);
 EVENTHANDLER_INVOKE(power_resume);
}
