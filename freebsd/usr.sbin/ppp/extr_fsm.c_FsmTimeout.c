
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsm {int state; TYPE_2__* parent; TYPE_1__* fn; int FsmTimer; scalar_t__ restart; } ;
struct TYPE_4__ {int object; int (* LayerFinish ) (int ,struct fsm*) ;} ;
struct TYPE_3__ {int (* LayerFinish ) (struct fsm*) ;} ;


 int FsmSendConfigReq (struct fsm*) ;
 int FsmSendTerminateReq (struct fsm*) ;
 int NewState (struct fsm*,int const) ;


 int const ST_CLOSED ;


 int const ST_STOPPED ;

 int stub1 (struct fsm*) ;
 int stub2 (int ,struct fsm*) ;
 int stub3 (struct fsm*) ;
 int stub4 (int ,struct fsm*) ;
 int stub5 (struct fsm*) ;
 int stub6 (int ,struct fsm*) ;
 int timer_Start (int *) ;

__attribute__((used)) static void
FsmTimeout(void *v)
{
  struct fsm *fp = (struct fsm *)v;

  if (fp->restart) {
    switch (fp->state) {
    case 130:
    case 128:
      FsmSendTerminateReq(fp);
      break;
    case 129:
    case 131:
      FsmSendConfigReq(fp);
      break;
    case 132:
      FsmSendConfigReq(fp);
      NewState(fp, 129);
      break;
    }
    timer_Start(&fp->FsmTimer);
  } else {
    switch (fp->state) {
    case 130:
      (*fp->fn->LayerFinish)(fp);
      NewState(fp, ST_CLOSED);
      (*fp->parent->LayerFinish)(fp->parent->object, fp);
      break;
    case 128:
      (*fp->fn->LayerFinish)(fp);
      NewState(fp, ST_STOPPED);
      (*fp->parent->LayerFinish)(fp->parent->object, fp);
      break;
    case 129:
    case 131:
    case 132:
      (*fp->fn->LayerFinish)(fp);
      NewState(fp, ST_STOPPED);
      (*fp->parent->LayerFinish)(fp->parent->object, fp);
      break;
    }
  }
}
