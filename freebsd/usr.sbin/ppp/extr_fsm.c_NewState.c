
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; void* arg; int func; scalar_t__ load; } ;
struct fsm {int state; TYPE_2__ StoppedTimer; TYPE_2__ FsmTimer; TYPE_1__* link; int LogLevel; } ;
struct TYPE_4__ {int name; } ;


 int ST_INITIAL ;
 int ST_OPENED ;
 int ST_STOPPED ;
 int State2Nam (int) ;
 int StoppedTimeout ;
 scalar_t__ TIMER_RUNNING ;
 int log_Printf (int ,char*,int ,int ,int ) ;
 int timer_Start (TYPE_2__*) ;
 int timer_Stop (TYPE_2__*) ;

__attribute__((used)) static void
NewState(struct fsm *fp, int new)
{
  log_Printf(fp->LogLevel, "%s: State change %s --> %s\n",
             fp->link->name, State2Nam(fp->state), State2Nam(new));
  if (fp->state == ST_STOPPED && fp->StoppedTimer.state == TIMER_RUNNING)
    timer_Stop(&fp->StoppedTimer);
  fp->state = new;
  if ((new >= ST_INITIAL && new <= ST_STOPPED) || (new == ST_OPENED)) {
    timer_Stop(&fp->FsmTimer);
    if (new == ST_STOPPED && fp->StoppedTimer.load) {
      timer_Stop(&fp->StoppedTimer);
      fp->StoppedTimer.func = StoppedTimeout;
      fp->StoppedTimer.arg = (void *) fp;
      timer_Start(&fp->StoppedTimer);
    }
  }
}
