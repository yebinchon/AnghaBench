
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int eax; scalar_t__ ebx; scalar_t__ ecx; scalar_t__ edx; } ;
struct TYPE_3__ {TYPE_2__ r; } ;
struct apm_softc {scalar_t__ always_halt_cpu; scalar_t__ active; TYPE_1__ bios; } ;


 int APM_BIOS ;
 int APM_CPUIDLE ;
 int apm_bioscall () ;
 struct apm_softc apm_softc ;
 int halt () ;

void
apm_cpu_idle(void)
{
 struct apm_softc *sc = &apm_softc;

 if (sc->active) {

  sc->bios.r.eax = (APM_BIOS <<8) | APM_CPUIDLE;
  sc->bios.r.edx = sc->bios.r.ecx = sc->bios.r.ebx = 0;
  (void) apm_bioscall();
 }
 if (!sc->active || sc->always_halt_cpu)
  halt();
}
