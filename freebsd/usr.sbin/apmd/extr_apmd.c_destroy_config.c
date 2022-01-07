
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct event_cmd {int dummy; } ;
struct battery_watch_event {struct battery_watch_event* next; struct event_cmd* cmdlist; } ;
struct TYPE_2__ {struct event_cmd* cmdlist; } ;


 int EVENT_MAX ;
 int apmctl_fd ;
 struct battery_watch_event* battery_watch_list ;
 int err (int,char*,int) ;
 TYPE_1__* events ;
 int free (struct battery_watch_event*) ;
 int free_event_cmd_list (struct event_cmd*) ;
 int write (int ,int*,int) ;

void
destroy_config(void)
{
 int i;
 struct battery_watch_event *q;


 for (i = 0; i < EVENT_MAX; i++) {
  if (events[i].cmdlist) {
   u_int event_type = i;
   if (write(apmctl_fd, &event_type, sizeof(u_int)) == -1) {
    err(1, "cannot disable event 0x%x", event_type);
   }
  }
 }

 for (i = 0; i < EVENT_MAX; i++) {
  struct event_cmd * p;
  if ((p = events[i].cmdlist))
   free_event_cmd_list(p);
  events[i].cmdlist = ((void*)0);
 }

 for( ; battery_watch_list; battery_watch_list = battery_watch_list -> next) {
  free_event_cmd_list(battery_watch_list->cmdlist);
  q = battery_watch_list->next;
  free(battery_watch_list);
  battery_watch_list = q;
 }
}
