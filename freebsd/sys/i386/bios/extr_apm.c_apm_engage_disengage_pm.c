
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int eax; int ecx; scalar_t__ edx; int ebx; } ;
struct TYPE_3__ {TYPE_2__ r; } ;
struct apm_softc {TYPE_1__ bios; } ;


 int APM_BIOS ;
 int APM_ENGAGEDISENGAGEPM ;
 int PMDV_ALLDEV ;
 int apm_bioscall () ;
 struct apm_softc apm_softc ;

__attribute__((used)) static int
apm_engage_disengage_pm(int engage)
{
 struct apm_softc *sc = &apm_softc;

 sc->bios.r.eax = (APM_BIOS << 8) | APM_ENGAGEDISENGAGEPM;
 sc->bios.r.ebx = PMDV_ALLDEV;
 sc->bios.r.ecx = engage;
 sc->bios.r.edx = 0;
 return (apm_bioscall());
}
