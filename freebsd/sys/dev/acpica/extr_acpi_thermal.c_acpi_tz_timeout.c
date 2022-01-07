
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_tz_softc {int dummy; } ;


 int TZ_FLAG_GETPROFILE ;
 int TZ_FLAG_GETSETTINGS ;
 int acpi_tz_establish (struct acpi_tz_softc*) ;
 int acpi_tz_monitor (struct acpi_tz_softc*) ;
 int acpi_tz_power_profile (struct acpi_tz_softc*) ;

__attribute__((used)) static void
acpi_tz_timeout(struct acpi_tz_softc *sc, int flags)
{


    acpi_tz_monitor(sc);


    if (flags & TZ_FLAG_GETPROFILE)
 acpi_tz_power_profile(sc);





    if (flags & TZ_FLAG_GETSETTINGS) {
 acpi_tz_establish(sc);
 acpi_tz_monitor(sc);
    }


}
