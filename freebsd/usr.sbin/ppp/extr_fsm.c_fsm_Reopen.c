
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsm {scalar_t__ state; TYPE_2__* parent; TYPE_1__* fn; } ;
struct TYPE_4__ {int object; int (* LayerDown ) (int ,struct fsm*) ;} ;
struct TYPE_3__ {int (* LayerDown ) (struct fsm*) ;} ;


 int FSM_REQ_TIMER ;
 int FsmInitRestartCounter (struct fsm*,int ) ;
 int FsmSendConfigReq (struct fsm*) ;
 int NewState (struct fsm*,int ) ;
 scalar_t__ ST_OPENED ;
 int ST_REQSENT ;
 int stub1 (struct fsm*) ;
 int stub2 (int ,struct fsm*) ;

void
fsm_Reopen(struct fsm *fp)
{
  if (fp->state == ST_OPENED) {
    (*fp->fn->LayerDown)(fp);
    FsmInitRestartCounter(fp, FSM_REQ_TIMER);
    FsmSendConfigReq(fp);
    NewState(fp, ST_REQSENT);
    (*fp->parent->LayerDown)(fp->parent->object, fp);
  }
}
