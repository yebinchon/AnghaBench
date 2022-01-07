
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_battinfo {int min; void* cap; } ;
typedef TYPE_1__* apm_info_t ;
struct TYPE_3__ {int ai_infoversion; int ai_major; int ai_minor; int ai_capabilities; int ai_acline; int ai_batt_time; unsigned int ai_batteries; void* ai_batt_life; void* ai_batt_stat; int ai_status; } ;


 void* APM_UNKNOWN ;
 scalar_t__ acpi_acad_get_acline (int*) ;
 scalar_t__ acpi_battery_get_battinfo (int *,struct acpi_battinfo*) ;
 unsigned int acpi_battery_get_units () ;
 void* acpi_capm_convert_battstate (struct acpi_battinfo*) ;
 int apm_active ;

__attribute__((used)) static int
acpi_capm_get_info(apm_info_t aip)
{
 int acline;
 struct acpi_battinfo batt;

 aip->ai_infoversion = 1;
 aip->ai_major = 1;
 aip->ai_minor = 2;
 aip->ai_status = apm_active;
 aip->ai_capabilities= 0xff00;

 if (acpi_acad_get_acline(&acline))
  aip->ai_acline = APM_UNKNOWN;
 else
  aip->ai_acline = acline;

 if (acpi_battery_get_battinfo(((void*)0), &batt) != 0) {
  aip->ai_batt_stat = APM_UNKNOWN;
  aip->ai_batt_life = APM_UNKNOWN;
  aip->ai_batt_time = -1;
  aip->ai_batteries = ~0U;
 } else {
  aip->ai_batt_stat = acpi_capm_convert_battstate(&batt);
  aip->ai_batt_life = batt.cap;
  aip->ai_batt_time = (batt.min == -1) ? -1 : batt.min * 60;
  aip->ai_batteries = acpi_battery_get_units();
 }

 return (0);
}
