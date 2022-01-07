
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int eax; int ebx; scalar_t__ edx; scalar_t__ ecx; } ;
struct TYPE_3__ {TYPE_2__ r; } ;
struct apm_softc {TYPE_1__ bios; } ;


 int APM_BIOS ;
 int APM_GETPMEVENT ;
 int PMEV_NOEVENT ;
 scalar_t__ apm_bioscall () ;
 struct apm_softc apm_softc ;

__attribute__((used)) static u_int
apm_getevent(void)
{
 struct apm_softc *sc = &apm_softc;

 sc->bios.r.eax = (APM_BIOS << 8) | APM_GETPMEVENT;

 sc->bios.r.ebx = 0;
 sc->bios.r.ecx = 0;
 sc->bios.r.edx = 0;
 if (apm_bioscall())
  return (PMEV_NOEVENT);
 return (sc->bios.r.ebx & 0xffff);
}
