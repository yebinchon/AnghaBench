
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_softc {scalar_t__ initialized; int standby_countdown; int standbys; int suspend_countdown; int suspends; } ;




 int apm_lastreq_notify () ;
 int apm_op_inprog ;
 struct apm_softc apm_softc ;
 int apm_standby_delay ;
 int apm_suspend_delay ;
 int printf (char*,int) ;

void
apm_suspend(int state)
{
 struct apm_softc *sc = &apm_softc;

 if (sc == ((void*)0) || sc->initialized == 0)
  return;

 switch (state) {
 case 128:
  if (sc->suspends)
   return;
  sc->suspends++;
  sc->suspend_countdown = apm_suspend_delay;
  break;
 case 129:
  if (sc->standbys)
   return;
  sc->standbys++;
  sc->standby_countdown = apm_standby_delay;
  break;
 default:
  printf("apm_suspend: Unknown Suspend state 0x%x\n", state);
  return;
 }

 apm_op_inprog++;
 apm_lastreq_notify();
}
