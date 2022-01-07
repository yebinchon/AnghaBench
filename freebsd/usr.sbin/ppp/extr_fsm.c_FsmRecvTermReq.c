
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct fsmheader {int id; } ;
struct fsm {int state; TYPE_3__* parent; int restart; int FsmTimer; TYPE_2__* fn; TYPE_1__* link; int LogLevel; } ;
struct TYPE_6__ {int object; int (* LayerDown ) (int ,struct fsm*) ;} ;
struct TYPE_5__ {int (* SendTerminateAck ) (struct fsm*,int ) ;int (* LayerDown ) (struct fsm*) ;} ;
struct TYPE_4__ {int name; } ;


 int FSM_TRM_TIMER ;
 int FsmInitRestartCounter (struct fsm*,int ) ;
 int NewState (struct fsm*,int const) ;
 int State2Nam (int) ;
 int log_Printf (int ,char*,int ,int ) ;
 int m_freem (struct mbuf*) ;
 int stub1 (struct fsm*,int ) ;
 int stub2 (struct fsm*,int ) ;
 int stub3 (struct fsm*) ;
 int stub4 (struct fsm*,int ) ;
 int stub5 (int ,struct fsm*) ;
 int timer_Start (int *) ;

__attribute__((used)) static void
FsmRecvTermReq(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)

{
  switch (fp->state) {
  case 133:
  case 130:
    log_Printf(fp->LogLevel, "%s: Oops, RTR in %s\n",
              fp->link->name, State2Nam(fp->state));
    break;
  case 135:
  case 129:
  case 134:
  case 128:
  case 131:
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    break;
  case 137:
  case 136:
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    NewState(fp, 131);
    break;
  case 132:
    (*fp->fn->LayerDown)(fp);
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    FsmInitRestartCounter(fp, FSM_TRM_TIMER);
    timer_Start(&fp->FsmTimer);
    fp->restart = 0;
    NewState(fp, 128);
    (*fp->parent->LayerDown)(fp->parent->object, fp);

    break;
  }
  m_freem(bp);
}
