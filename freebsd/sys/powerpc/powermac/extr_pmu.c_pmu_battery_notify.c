
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_battstate {int state; } ;
typedef int notify_buf ;


 int PMU_PWR_AC_PRESENT ;
 int devctl_notify (char*,char*,char*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
pmu_battery_notify(struct pmu_battstate *batt, struct pmu_battstate *old)
{
 char notify_buf[16];
 int new_acline, old_acline;

 new_acline = (batt->state & PMU_PWR_AC_PRESENT) ? 1 : 0;
 old_acline = (old->state & PMU_PWR_AC_PRESENT) ? 1 : 0;

 if (new_acline != old_acline) {
  snprintf(notify_buf, sizeof(notify_buf),
      "notify=0x%02x", new_acline);
  devctl_notify("PMU", "POWER", "ACLINE", notify_buf);
 }
}
