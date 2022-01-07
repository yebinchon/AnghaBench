
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eax; scalar_t__ ebx; scalar_t__ ecx; scalar_t__ edx; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct apm_softc {TYPE_2__ bios; scalar_t__ active; scalar_t__ slow_idle_cpu; } ;


 int APM_BIOS ;
 int APM_CPUBUSY ;
 int apm_bioscall () ;
 struct apm_softc apm_softc ;

void
apm_cpu_busy(void)
{
 struct apm_softc *sc = &apm_softc;






 if (sc->slow_idle_cpu && sc->active) {

  sc->bios.r.eax = (APM_BIOS <<8) | APM_CPUBUSY;
  sc->bios.r.edx = sc->bios.r.ecx = sc->bios.r.ebx = 0;
  apm_bioscall();
 }
}
