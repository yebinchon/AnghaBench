
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_softc {scalar_t__ initialized; scalar_t__ standby_countdown; scalar_t__ standbys; } ;


 int PMST_STANDBY ;
 scalar_t__ apm_op_inprog ;
 int apm_processevent () ;
 struct apm_softc apm_softc ;
 scalar_t__ apm_suspend_system (int ) ;

__attribute__((used)) static void
apm_do_standby(void)
{
 struct apm_softc *sc = &apm_softc;

 if (sc == ((void*)0) || sc->initialized == 0)
  return;

 apm_op_inprog = 0;
 sc->standbys = sc->standby_countdown = 0;





 if (apm_suspend_system(PMST_STANDBY) == 0)
  apm_processevent();
 return;
}
