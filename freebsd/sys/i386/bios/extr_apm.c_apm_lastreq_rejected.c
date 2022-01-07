
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eax; scalar_t__ edx; int ecx; int ebx; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct apm_softc {TYPE_2__ bios; } ;


 int APM_BIOS ;
 int APM_DPRINT (char*) ;
 int APM_SETPWSTATE ;
 int PMDV_ALLDEV ;
 int PMST_LASTREQREJECT ;
 scalar_t__ apm_bioscall () ;
 scalar_t__ apm_op_inprog ;
 struct apm_softc apm_softc ;

__attribute__((used)) static int
apm_lastreq_rejected(void)
{
 struct apm_softc *sc = &apm_softc;

 if (apm_op_inprog == 0) {
  return 1;
 }

 sc->bios.r.eax = (APM_BIOS << 8) | APM_SETPWSTATE;
 sc->bios.r.ebx = PMDV_ALLDEV;
 sc->bios.r.ecx = PMST_LASTREQREJECT;
 sc->bios.r.edx = 0;

 if (apm_bioscall()) {
  APM_DPRINT("apm_lastreq_rejected: failed\n");
  return 1;
 }
 apm_op_inprog = 0;
 return 0;
}
