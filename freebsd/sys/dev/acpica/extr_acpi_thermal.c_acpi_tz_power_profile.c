
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_tz_softc {int tz_flags; int tz_handle; int tz_dev; } ;
typedef scalar_t__ ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_VPRINT (int ,int ,char*,int ,int ) ;
 scalar_t__ AE_NOT_FOUND ;
 int AcpiFormatException (scalar_t__) ;
 int POWER_PROFILE_ECONOMY ;
 int POWER_PROFILE_PERFORMANCE ;
 int TZ_FLAG_GETSETTINGS ;
 int TZ_FLAG_NO_SCP ;
 scalar_t__ acpi_SetInteger (int ,char*,int) ;
 int acpi_device_get_parent_softc (int ) ;
 int acpi_name (int ) ;
 int acpi_tz_signal (struct acpi_tz_softc*,int ) ;
 int power_profile_get_state () ;

__attribute__((used)) static void
acpi_tz_power_profile(void *arg)
{
    ACPI_STATUS status;
    struct acpi_tz_softc *sc = (struct acpi_tz_softc *)arg;
    int state;

    state = power_profile_get_state();
    if (state != POWER_PROFILE_PERFORMANCE && state != POWER_PROFILE_ECONOMY)
 return;


    if ((sc->tz_flags & TZ_FLAG_NO_SCP) == 0) {


 status = acpi_SetInteger(sc->tz_handle, "_SCP",
     (state == POWER_PROFILE_PERFORMANCE) ? 0 : 1);
 if (ACPI_FAILURE(status)) {
     if (status != AE_NOT_FOUND)
  ACPI_VPRINT(sc->tz_dev,
       acpi_device_get_parent_softc(sc->tz_dev),
       "can't evaluate %s._SCP - %s\n",
       acpi_name(sc->tz_handle),
       AcpiFormatException(status));
     sc->tz_flags |= TZ_FLAG_NO_SCP;
 } else {

     acpi_tz_signal(sc, TZ_FLAG_GETSETTINGS);
 }
    }
}
