
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_tz_softc {int tz_insane_tmp_notified; int tz_dev; } ;


 int TZ_KELVTOC (int) ;
 int TZ_ZEROC ;
 char* acpi_tz_tmp_name ;
 int device_printf (int ,char*,char*,int ) ;

__attribute__((used)) static void
acpi_tz_sanity(struct acpi_tz_softc *sc, int *val, char *what)
{
    if (*val != -1 && (*val < TZ_ZEROC || *val > TZ_ZEROC + 2000)) {
 if (what != acpi_tz_tmp_name || !sc->tz_insane_tmp_notified) {
     device_printf(sc->tz_dev, "%s value is absurd, ignored (%d.%dC)\n",
     what, TZ_KELVTOC(*val));


     if (what == acpi_tz_tmp_name)
  sc->tz_insane_tmp_notified = 1;
 }
 *val = -1;
 return;
    }


    if (what == acpi_tz_tmp_name)
 sc->tz_insane_tmp_notified = 0;
}
