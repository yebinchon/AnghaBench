
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int tc_flags; int tc_name; } ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int EVENTHANDLER_PRI_LAST ;
 int * EVENTHANDLER_REGISTER (int ,int ,struct timecounter*,int ) ;
 int KASSERT (int,char*) ;
 int TC_FLAGS_SUSPEND_SAFE ;
 int acpi_timer_dev ;
 int * acpi_timer_eh ;
 int acpi_timer_read () ;
 int acpi_timer_resume_handler ;
 struct timecounter acpi_timer_timecounter ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,int ) ;
 int power_resume ;
 struct timecounter* timecounter ;

__attribute__((used)) static void
acpi_timer_suspend_handler(struct timecounter *newtc)
{
 struct timecounter *tc;


 if (acpi_timer_eh != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(power_resume, acpi_timer_eh);
  acpi_timer_eh = ((void*)0);
 }

 if ((timecounter->tc_flags & TC_FLAGS_SUSPEND_SAFE) != 0) {




  return;
 }

 KASSERT(newtc == &acpi_timer_timecounter,
     ("acpi_timer_suspend_handler: wrong timecounter"));

 tc = timecounter;
 if (tc != newtc) {
  if (bootverbose)
   device_printf(acpi_timer_dev,
       "switching timecounter, %s -> %s\n",
       tc->tc_name, newtc->tc_name);
  (void)acpi_timer_read();
  (void)acpi_timer_read();
  timecounter = newtc;
  acpi_timer_eh = EVENTHANDLER_REGISTER(power_resume,
      acpi_timer_resume_handler, tc, EVENTHANDLER_PRI_LAST);
 }
}
