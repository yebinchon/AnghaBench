
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsm {scalar_t__ state; TYPE_1__* parent; TYPE_2__* fn; int OpenTimer; } ;
struct TYPE_4__ {int (* LayerStart ) (struct fsm*) ;} ;
struct TYPE_3__ {int object; int (* LayerStart ) (int ,struct fsm*) ;} ;


 int FSM_REQ_TIMER ;
 int FsmInitRestartCounter (struct fsm*,int ) ;
 int FsmSendConfigReq (struct fsm*) ;
 int NewState (struct fsm*,int ) ;
 int ST_REQSENT ;
 scalar_t__ ST_STARTING ;
 scalar_t__ ST_STOPPED ;
 int stub1 (struct fsm*) ;
 int stub2 (int ,struct fsm*) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
FsmOpenNow(void *v)
{
  struct fsm *fp = (struct fsm *)v;

  timer_Stop(&fp->OpenTimer);
  if (fp->state <= ST_STOPPED) {
    if (fp->state != ST_STARTING) {
      (*fp->fn->LayerStart)(fp);
      (*fp->parent->LayerStart)(fp->parent->object, fp);
    }
    FsmInitRestartCounter(fp, FSM_REQ_TIMER);
    FsmSendConfigReq(fp);
    NewState(fp, ST_REQSENT);
  }
}
