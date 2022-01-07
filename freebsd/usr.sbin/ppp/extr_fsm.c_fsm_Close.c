
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsm {int state; TYPE_1__* parent; TYPE_2__* fn; } ;
struct TYPE_4__ {int (* LayerDown ) (struct fsm*) ;int (* LayerFinish ) (struct fsm*) ;} ;
struct TYPE_3__ {int object; int (* LayerDown ) (int ,struct fsm*) ;int (* LayerFinish ) (int ,struct fsm*) ;} ;


 int FSM_TRM_TIMER ;
 int FsmInitRestartCounter (struct fsm*,int ) ;
 int FsmSendTerminateReq (struct fsm*) ;
 int NewState (struct fsm*,int ) ;


 int ST_CLOSED ;
 int ST_CLOSING ;
 int ST_INITIAL ;





 int stub1 (struct fsm*) ;
 int stub2 (int ,struct fsm*) ;
 int stub3 (struct fsm*) ;
 int stub4 (int ,struct fsm*) ;

void
fsm_Close(struct fsm *fp)
{
  switch (fp->state) {
  case 130:
    (*fp->fn->LayerFinish)(fp);
    NewState(fp, ST_INITIAL);
    (*fp->parent->LayerFinish)(fp->parent->object, fp);
    break;
  case 129:
    NewState(fp, ST_CLOSED);
    break;
  case 128:
    NewState(fp, ST_CLOSING);
    break;
  case 132:
    (*fp->fn->LayerDown)(fp);
    if (fp->state == 132) {
      FsmInitRestartCounter(fp, FSM_TRM_TIMER);
      FsmSendTerminateReq(fp);
      NewState(fp, ST_CLOSING);
      (*fp->parent->LayerDown)(fp->parent->object, fp);
    }
    break;
  case 131:
  case 134:
  case 133:
    FsmInitRestartCounter(fp, FSM_TRM_TIMER);
    FsmSendTerminateReq(fp);
    NewState(fp, ST_CLOSING);
    break;
  }
}
