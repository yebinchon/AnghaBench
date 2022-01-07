
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_softc {scalar_t__ initialized; int always_halt_cpu; } ;


 struct apm_softc apm_softc ;

__attribute__((used)) static void
apm_halt_cpu(void)
{
 struct apm_softc *sc = &apm_softc;

 if (sc == ((void*)0) || sc->initialized == 0)
  return;

 sc->always_halt_cpu = 1;

 return;
}
