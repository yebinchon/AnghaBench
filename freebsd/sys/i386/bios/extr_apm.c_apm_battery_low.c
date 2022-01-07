
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void
apm_battery_low(void)
{
 printf("\007\007 * * * BATTERY IS LOW * * * \007\007");
}
