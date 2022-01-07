
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_INVOKE (int ,int ) ;
 int POWER_PROFILE_PERFORMANCE ;
 scalar_t__ bootverbose ;
 int power_profile_change ;
 int power_profile_state ;
 int printf (char*,char*) ;

void
power_profile_set_state(int state)
{
 int changed;

 if (state != power_profile_state) {
  power_profile_state = state;
  changed = 1;
  if (bootverbose) {
   printf("system power profile changed to '%s'\n",
    (state == POWER_PROFILE_PERFORMANCE) ?
    "performance" : "economy");
  }
 } else {
  changed = 0;
 }

 if (changed)
  EVENTHANDLER_INVOKE(power_profile_change, 0);
}
