
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eax; int ebx; int ecx; scalar_t__ edx; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct apm_softc {scalar_t__ intversion; TYPE_2__ bios; } ;


 int APM_BIOS ;
 int APM_ENABLEDISABLEPM ;
 scalar_t__ INTVERSION (int,int) ;
 int PMDV_ALLDEV ;
 int apm_bioscall () ;
 struct apm_softc apm_softc ;

__attribute__((used)) static int
apm_enable_disable_pm(int enable)
{
 struct apm_softc *sc = &apm_softc;

 sc->bios.r.eax = (APM_BIOS << 8) | APM_ENABLEDISABLEPM;

 if (sc->intversion >= INTVERSION(1, 1))
  sc->bios.r.ebx = PMDV_ALLDEV;
 else
  sc->bios.r.ebx = 0xffff;
 sc->bios.r.ecx = enable;
 sc->bios.r.edx = 0;
 return (apm_bioscall());
}
