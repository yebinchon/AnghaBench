
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct battery_watch_event {int direction; scalar_t__ type; int level; int cmdlist; scalar_t__ done; struct battery_watch_event* next; } ;
struct apm_info {int ai_batt_time; scalar_t__ ai_batt_life; } ;


 int AC_POWER_STATE ;
 int APMIO_GETINFO ;
 int BATTERY_CHARGING ;
 scalar_t__ BATTERY_MINUTES ;
 scalar_t__ BATTERY_PERCENT ;
 int LOG_NOTICE ;
 size_t PMEV_POWERSTATECHANGE ;
 int apmnorm_fd ;
 struct battery_watch_event* battery_watch_list ;
 int err (int,char*) ;
 int * events ;
 int exec_event_cmd (int *) ;
 int exec_run_cmd (int ) ;
 int exit (int) ;
 scalar_t__ fork () ;
 scalar_t__ ioctl (int ,int ,struct apm_info*) ;
 scalar_t__ soft_power_state_change ;
 int syslog (int ,char*,char*,int,char*) ;
 scalar_t__ verbose ;

void
check_battery(void)
{

 static int first_time=1, last_state;
 int status;

 struct apm_info pw_info;
 struct battery_watch_event *p;


 if (battery_watch_list == ((void*)0))
  return;

 if (first_time) {
  if ( ioctl(apmnorm_fd, APMIO_GETINFO, &pw_info) < 0)
   err(1, "cannot check battery state.");




  last_state = AC_POWER_STATE;
  first_time = 0;
  return;
 }





 if ( ioctl(apmnorm_fd, APMIO_GETINFO, &pw_info) < 0)
  err(1, "cannot check battery state.");






 if (last_state != AC_POWER_STATE) {
  if (soft_power_state_change && fork() == 0) {
   status = exec_event_cmd(&events[PMEV_POWERSTATECHANGE]);
   exit(status);
  }
  last_state = AC_POWER_STATE;
  for (p = battery_watch_list ; p!=((void*)0) ; p = p -> next)
   p->done = 0;
 }
 for (p = battery_watch_list ; p != ((void*)0) ; p = p -> next)
  if (p -> direction == AC_POWER_STATE &&
   !(p -> done) &&
   ((p -> type == BATTERY_PERCENT &&
    p -> level == (int)pw_info.ai_batt_life) ||
   (p -> type == BATTERY_MINUTES &&
    p -> level == (pw_info.ai_batt_time / 60)))) {
   p -> done++;
   if (verbose)
    syslog(LOG_NOTICE, "Caught battery event: %s, %d%s",
     (p -> direction == BATTERY_CHARGING)?"charging":"discharging",
     p -> level,
     (p -> type == BATTERY_PERCENT)?"%":" minutes");
   if (fork() == 0) {
    status = exec_run_cmd(p -> cmdlist);
    exit(status);
   }
  }
}
