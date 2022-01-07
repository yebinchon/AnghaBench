
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_softc {scalar_t__ initialized; int suspending; scalar_t__ suspend_countdown; scalar_t__ suspends; } ;


 size_t APM_HOOK_RESUME ;
 size_t APM_HOOK_SUSPEND ;
 int DEVICE_RESUME (int ) ;
 int DEVICE_SUSPEND (int ) ;
 int EVENTHANDLER_INVOKE (int ) ;
 int Giant ;
 int PMST_SUSPEND ;
 int apm_execute_hook (int ) ;
 scalar_t__ apm_op_inprog ;
 int apm_processevent () ;
 struct apm_softc apm_softc ;
 scalar_t__ apm_suspend_system (int ) ;
 int * hook ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int power_resume ;
 int power_suspend ;
 int root_bus ;

__attribute__((used)) static void
apm_do_suspend(void)
{
 struct apm_softc *sc = &apm_softc;
 int error;

 if (sc == ((void*)0) || sc->initialized == 0)
  return;

 apm_op_inprog = 0;
 sc->suspends = sc->suspend_countdown = 0;

 EVENTHANDLER_INVOKE(power_suspend);





 mtx_lock(&Giant);
 error = DEVICE_SUSPEND(root_bus);
 if (error)
  goto backout;

 apm_execute_hook(hook[APM_HOOK_SUSPEND]);
 if (apm_suspend_system(PMST_SUSPEND) == 0) {
  sc->suspending = 1;
  apm_processevent();
  mtx_unlock(&Giant);
  return;
 }


 apm_execute_hook(hook[APM_HOOK_RESUME]);
 DEVICE_RESUME(root_bus);
backout:
 mtx_unlock(&Giant);
 EVENTHANDLER_INVOKE(power_resume);
}
