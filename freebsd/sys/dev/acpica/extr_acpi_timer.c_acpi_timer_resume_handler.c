
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int (* tc_get_timecount ) (struct timecounter*) ;int tc_name; } ;


 int acpi_timer_dev ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,int ) ;
 int stub1 (struct timecounter*) ;
 int stub2 (struct timecounter*) ;
 struct timecounter* timecounter ;

__attribute__((used)) static void
acpi_timer_resume_handler(struct timecounter *newtc)
{
 struct timecounter *tc;

 tc = timecounter;
 if (tc != newtc) {
  if (bootverbose)
   device_printf(acpi_timer_dev,
       "restoring timecounter, %s -> %s\n",
       tc->tc_name, newtc->tc_name);
  (void)newtc->tc_get_timecount(newtc);
  (void)newtc->tc_get_timecount(newtc);
  timecounter = newtc;
 }
}
