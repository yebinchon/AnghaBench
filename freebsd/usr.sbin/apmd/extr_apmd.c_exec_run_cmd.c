
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_cmd {int name; TYPE_1__* op; struct event_cmd* next; } ;
struct TYPE_2__ {int (* act ) (struct event_cmd*) ;} ;


 int LOG_INFO ;
 int LOG_NOTICE ;
 int assert (int (*) (struct event_cmd*)) ;
 int stub1 (struct event_cmd*) ;
 int syslog (int ,char*,int) ;
 scalar_t__ verbose ;

int
exec_run_cmd(struct event_cmd *p)
{
 int status = 0;

 for (; p; p = p->next) {
  assert(p->op->act);
  if (verbose)
   syslog(LOG_INFO, "action: %s", p->name);
  status = p->op->act(p);
  if (status) {
   syslog(LOG_NOTICE, "command finished with %d\n", status);
   break;
  }
 }
 return status;
}
