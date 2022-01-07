
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battinfo {int cap; int state; } ;


 int ACPI_BATT_STAT_CHARGING ;
 int ACPI_BATT_STAT_CRITICAL ;
 int ACPI_BATT_STAT_NOT_PRESENT ;
 int APM_BATT_CHARGING ;
 int APM_BATT_CRITICAL ;
 int APM_BATT_HIGH ;
 int APM_BATT_LOW ;
 int APM_BATT_NOT_PRESENT ;

__attribute__((used)) static int
acpi_capm_convert_battflags(struct acpi_battinfo *battp)
{
 int flags;

 flags = 0;

 if (battp->cap >= 50)
  flags |= APM_BATT_HIGH;
 else {
  if (battp->state & ACPI_BATT_STAT_CRITICAL)
   flags |= APM_BATT_CRITICAL;
  else
   flags |= APM_BATT_LOW;
 }
 if (battp->state & ACPI_BATT_STAT_CHARGING)
  flags |= APM_BATT_CHARGING;
 if (battp->state == ACPI_BATT_STAT_NOT_PRESENT)
  flags = APM_BATT_NOT_PRESENT;

 return (flags);
}
