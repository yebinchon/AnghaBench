
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_cmd {int dummy; } ;
struct battery_watch_event {int level; int cmdlist; scalar_t__ done; int direction; int type; struct battery_watch_event* next; } ;


 int BATTERY_CHARGING ;
 int BATTERY_DISCHARGING ;
 int BATTERY_MINUTES ;
 int BATTERY_PERCENT ;
 int abs (int) ;
 struct battery_watch_event* battery_watch_list ;
 int clone_event_cmd_list (struct event_cmd*) ;
 int err (int,char*) ;
 struct battery_watch_event* malloc (int) ;

int
register_battery_handlers(
 int level, int direction,
 struct event_cmd *cmdlist)
{







 if (level>100)
  return -1;
 if (abs(direction) != 1)
  return -1;

 if (cmdlist) {
  struct battery_watch_event *we;

  if ((we = malloc(sizeof(struct battery_watch_event))) == ((void*)0))
   err(1, "out of memory");

  we->next = battery_watch_list;
  battery_watch_list = we;
  we->level = abs(level);
  we->type = (level<0)?BATTERY_MINUTES:BATTERY_PERCENT;
  we->direction = (direction<0)?BATTERY_DISCHARGING:
   BATTERY_CHARGING;
  we->done = 0;
  we->cmdlist = clone_event_cmd_list(cmdlist);
 }
 return 0;
}
