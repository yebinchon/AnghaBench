
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsm {int restart; int FsmTimer; TYPE_1__* fn; int reqid; } ;
struct TYPE_2__ {int (* SentTerminateReq ) (struct fsm*) ;} ;


 int CODE_TERMREQ ;
 int MB_UNKNOWN ;
 int fsm_Output (struct fsm*,int ,int ,int *,int ,int ) ;
 int stub1 (struct fsm*) ;
 int timer_Start (int *) ;

__attribute__((used)) static void
FsmSendTerminateReq(struct fsm *fp)
{
  fsm_Output(fp, CODE_TERMREQ, fp->reqid, ((void*)0), 0, MB_UNKNOWN);
  (*fp->fn->SentTerminateReq)(fp);
  timer_Start(&fp->FsmTimer);
  fp->restart--;
}
