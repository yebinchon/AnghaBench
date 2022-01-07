
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct datalink {scalar_t__ state; int name; TYPE_1__ dial; } ;


 scalar_t__ DATALINK_OPENING ;
 int LogCHAT ;
 int log_Printf (int ,char*,int ) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
datalink_OpenTimeout(void *v)
{
  struct datalink *dl = (struct datalink *)v;

  timer_Stop(&dl->dial.timer);
  if (dl->state == DATALINK_OPENING)
    log_Printf(LogCHAT, "%s: Redial timer expired.\n", dl->name);
}
