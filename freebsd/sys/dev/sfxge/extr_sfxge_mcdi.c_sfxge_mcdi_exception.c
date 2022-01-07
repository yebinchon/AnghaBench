
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int dev; } ;
typedef scalar_t__ efx_mcdi_exception_t ;
typedef int device_t ;


 int EFSYS_PROBE (int ) ;
 scalar_t__ EFX_MCDI_EXCEPTION_MC_BADASSERT ;
 scalar_t__ EFX_MCDI_EXCEPTION_MC_REBOOT ;
 int LOG_WARNING ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int log (int ,char*,int ,int ,char*) ;
 int mcdi_exception ;
 int sfxge_schedule_reset (struct sfxge_softc*) ;

__attribute__((used)) static void
sfxge_mcdi_exception(void *arg, efx_mcdi_exception_t eme)
{
 struct sfxge_softc *sc;
 device_t dev;

 sc = (struct sfxge_softc *)arg;
 dev = sc->dev;

 log(LOG_WARNING, "[%s%d] MC_%s", device_get_name(dev),
     device_get_unit(dev),
     (eme == EFX_MCDI_EXCEPTION_MC_REBOOT)
     ? "REBOOT"
     : (eme == EFX_MCDI_EXCEPTION_MC_BADASSERT)
     ? "BADASSERT" : "UNKNOWN");

 EFSYS_PROBE(mcdi_exception);

 sfxge_schedule_reset(sc);
}
