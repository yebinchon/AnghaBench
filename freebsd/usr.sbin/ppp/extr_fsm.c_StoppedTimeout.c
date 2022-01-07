
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct fsm {scalar_t__ state; TYPE_2__ OpenTimer; int name; TYPE_1__* link; int LogLevel; } ;
struct TYPE_3__ {int name; } ;


 int LogWARN ;
 scalar_t__ ST_STOPPED ;
 scalar_t__ TIMER_RUNNING ;
 int fsm2initial (struct fsm*) ;
 int log_Printf (int ,char*,int ,...) ;
 int timer_Stop (TYPE_2__*) ;

__attribute__((used)) static void
StoppedTimeout(void *v)
{
  struct fsm *fp = (struct fsm *)v;

  log_Printf(fp->LogLevel, "%s: Stopped timer expired\n", fp->link->name);
  if (fp->OpenTimer.state == TIMER_RUNNING) {
    log_Printf(LogWARN, "%s: %s: aborting open delay due to stopped timer\n",
              fp->link->name, fp->name);
    timer_Stop(&fp->OpenTimer);
  }
  if (fp->state == ST_STOPPED)
    fsm2initial(fp);
}
