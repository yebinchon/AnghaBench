
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int eax; scalar_t__ edx; int ecx; int ebx; } ;
struct TYPE_3__ {TYPE_2__ r; } ;
struct apm_softc {TYPE_1__ bios; int active; } ;


 int APM_BIOS ;
 int APM_SETPWSTATE ;
 int PMDV_ALLDEV ;
 int PMST_OFF ;
 int RB_POWEROFF ;
 int apm_bioscall () ;
 struct apm_softc apm_softc ;

__attribute__((used)) static void
apm_power_off(void *junk, int howto)
{
 struct apm_softc *sc = &apm_softc;


 if (!(howto & RB_POWEROFF) || !apm_softc.active)
  return;
 sc->bios.r.eax = (APM_BIOS << 8) | APM_SETPWSTATE;
 sc->bios.r.ebx = PMDV_ALLDEV;
 sc->bios.r.ecx = PMST_OFF;
 sc->bios.r.edx = 0;
 (void) apm_bioscall();
}
