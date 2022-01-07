
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battinfo {int state; int cap; } ;


 int ACPI_BATT_STAT_CHARGING ;
 int ACPI_BATT_STAT_CRITICAL ;
 int ACPI_BATT_STAT_DISCHARG ;
 int APM_UNKNOWN ;

__attribute__((used)) static int
acpi_capm_convert_battstate(struct acpi_battinfo *battp)
{
 int state;

 state = APM_UNKNOWN;

 if (battp->state & ACPI_BATT_STAT_DISCHARG) {
  if (battp->cap >= 50)
   state = 0;
  else
   state = 1;
 }
 if (battp->state & ACPI_BATT_STAT_CRITICAL)
  state = 2;
 if (battp->state & ACPI_BATT_STAT_CHARGING)
  state = 3;


 if (state == APM_UNKNOWN) {
  if (battp->cap >= 50)
   state = 0;
  else
   state = 1;
 }

 return (state);
}
