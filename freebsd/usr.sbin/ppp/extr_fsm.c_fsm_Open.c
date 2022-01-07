
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int load; void* arg; int (* func ) (struct fsm*) ;} ;
struct fsm {int state; int open_mode; TYPE_4__ OpenTimer; TYPE_3__* link; TYPE_2__* parent; TYPE_1__* fn; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int object; int (* LayerStart ) (int ,struct fsm*) ;} ;
struct TYPE_6__ {int (* LayerStart ) (struct fsm*) ;} ;


 int FsmOpenNow (struct fsm*) ;
 int LogPHASE ;
 int NewState (struct fsm*,int const) ;
 int OPEN_PASSIVE ;
 int SECTICKS ;







 int const ST_STARTING ;


 int log_Printf (int ,char*,int ,int) ;
 int stub1 (struct fsm*) ;
 int stub2 (int ,struct fsm*) ;
 int timer_Start (TYPE_4__*) ;
 int timer_Stop (TYPE_4__*) ;

void
fsm_Open(struct fsm *fp)
{
  switch (fp->state) {
  case 132:
    NewState(fp, ST_STARTING);
    (*fp->fn->LayerStart)(fp);
    (*fp->parent->LayerStart)(fp->parent->object, fp);
    break;
  case 134:
    if (fp->open_mode == OPEN_PASSIVE) {
      NewState(fp, 129);
    } else if (fp->open_mode > 0) {
      if (fp->open_mode > 1)
        log_Printf(LogPHASE, "%s: Entering STOPPED state for %d seconds\n",
                  fp->link->name, fp->open_mode);
      NewState(fp, 129);
      timer_Stop(&fp->OpenTimer);
      fp->OpenTimer.load = fp->open_mode * SECTICKS;
      fp->OpenTimer.func = FsmOpenNow;
      fp->OpenTimer.arg = (void *)fp;
      timer_Start(&fp->OpenTimer);
    } else
      FsmOpenNow(fp);
    break;
  case 129:
  case 130:
  case 136:
  case 135:
  case 131:
    break;
  case 133:
  case 128:
    NewState(fp, 128);
    break;
  }
}
