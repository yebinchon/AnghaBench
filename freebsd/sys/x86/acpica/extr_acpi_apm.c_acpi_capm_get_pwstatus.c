
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_battinfo {int min; int cap; } ;
typedef int * device_t ;
typedef TYPE_1__* apm_pwstatus_t ;
struct TYPE_3__ {scalar_t__ ap_device; int ap_batt_time; int ap_acline; int ap_batt_life; int ap_batt_flag; int ap_batt_stat; } ;


 int APM_UNKNOWN ;
 int ENXIO ;
 scalar_t__ PMDV_ALLDEV ;
 scalar_t__ PMDV_BATT0 ;
 scalar_t__ PMDV_BATT_ALL ;
 scalar_t__ acpi_acad_get_acline (int*) ;
 int acpi_battery_get_battinfo (int *,struct acpi_battinfo*) ;
 int acpi_capm_convert_battflags (struct acpi_battinfo*) ;
 int acpi_capm_convert_battstate (struct acpi_battinfo*) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int) ;

__attribute__((used)) static int
acpi_capm_get_pwstatus(apm_pwstatus_t app)
{
 device_t dev;
 int acline, unit, error;
 struct acpi_battinfo batt;

 if (app->ap_device != PMDV_ALLDEV &&
     (app->ap_device < PMDV_BATT0 || app->ap_device > PMDV_BATT_ALL))
  return (1);

 if (app->ap_device == PMDV_ALLDEV)
  error = acpi_battery_get_battinfo(((void*)0), &batt);
 else {
  unit = app->ap_device - PMDV_BATT0;
  dev = devclass_get_device(devclass_find("battery"), unit);
  if (dev != ((void*)0))
   error = acpi_battery_get_battinfo(dev, &batt);
  else
   error = ENXIO;
 }
 if (error)
  return (1);

 app->ap_batt_stat = acpi_capm_convert_battstate(&batt);
 app->ap_batt_flag = acpi_capm_convert_battflags(&batt);
 app->ap_batt_life = batt.cap;
 app->ap_batt_time = (batt.min == -1) ? -1 : batt.min * 60;

 if (acpi_acad_get_acline(&acline))
  app->ap_acline = APM_UNKNOWN;
 else
  app->ap_acline = acline;

 return (0);
}
