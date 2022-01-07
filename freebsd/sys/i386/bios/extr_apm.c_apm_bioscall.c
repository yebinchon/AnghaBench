
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int eax; } ;
struct TYPE_4__ {int entry; TYPE_1__ r; int seg; } ;
struct apm_softc {int bios_busy; scalar_t__ connectmode; TYPE_2__ bios; int minorversion; int majorversion; int intversion; } ;


 int APM_DPRINT (char*,int,int ,int ) ;
 scalar_t__ APM_PROT32CONNECT ;
 int BIOSCODE_FLAG ;
 int BIOSDATA_FLAG ;
 int GBIOSCODE32_SEL ;
 int GSEL (int ,int ) ;
 int SEL_KPL ;
 int apm_check_function_supported (int ,int) ;
 struct apm_softc apm_softc ;
 int bios16 (TYPE_2__*,int *) ;
 int bios32 (TYPE_1__*,int ,int ) ;
 int set_bios_selectors (int *,int) ;

__attribute__((used)) static int
apm_bioscall(void)
{
 struct apm_softc *sc = &apm_softc;
 int errno = 0;
 u_int apm_func = sc->bios.r.eax & 0xff;

 if (!apm_check_function_supported(sc->intversion, apm_func)) {
  APM_DPRINT("apm_bioscall: function 0x%x is not supported in v%d.%d\n",
      apm_func, sc->majorversion, sc->minorversion);
  return (-1);
 }

 sc->bios_busy = 1;
 if (sc->connectmode == APM_PROT32CONNECT) {
  set_bios_selectors(&sc->bios.seg,
       BIOSCODE_FLAG | BIOSDATA_FLAG);
  errno = bios32(&sc->bios.r,
          sc->bios.entry, GSEL(GBIOSCODE32_SEL, SEL_KPL));
 } else {
  errno = bios16(&sc->bios, ((void*)0));
 }
 sc->bios_busy = 0;
 return (errno);
}
