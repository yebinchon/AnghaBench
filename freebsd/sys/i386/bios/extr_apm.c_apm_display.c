
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eax; scalar_t__ edx; void* ecx; int ebx; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct apm_softc {TYPE_2__ bios; } ;


 int APM_BIOS ;
 int APM_SETPWSTATE ;
 int PMDV_DISP0 ;
 int PMDV_DISPALL ;
 void* PMST_APMENABLED ;
 void* PMST_SUSPEND ;
 scalar_t__ apm_bioscall () ;
 struct apm_softc apm_softc ;
 int printf (char*,int) ;

int
apm_display(int newstate)
{
 struct apm_softc *sc = &apm_softc;

 sc->bios.r.eax = (APM_BIOS << 8) | APM_SETPWSTATE;
 sc->bios.r.ebx = PMDV_DISP0;
 sc->bios.r.ecx = newstate ? PMST_APMENABLED:PMST_SUSPEND;
 sc->bios.r.edx = 0;
 if (apm_bioscall() == 0) {
  return 0;
  }


 sc->bios.r.eax = (APM_BIOS << 8) | APM_SETPWSTATE;
 sc->bios.r.ebx = PMDV_DISPALL;
 sc->bios.r.ecx = newstate ? PMST_APMENABLED:PMST_SUSPEND;
 sc->bios.r.edx = 0;
 if (apm_bioscall() == 0) {
  return 0;
  }
  printf("Display off failure: errcode = %d\n",
        0xff & (sc->bios.r.eax >> 8));
  return 1;
}
