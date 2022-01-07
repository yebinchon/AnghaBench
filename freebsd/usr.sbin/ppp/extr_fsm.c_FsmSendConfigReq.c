
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ reqs; } ;
struct fsm {TYPE_1__* link; int name; TYPE_2__ more; int FsmTimer; TYPE_3__* fn; int restart; } ;
struct TYPE_6__ {int (* SendConfigReq ) (struct fsm*) ;} ;
struct TYPE_4__ {int lcp; int name; } ;


 int LogPHASE ;
 int fsm_Close (struct fsm*) ;
 int lcp_SendIdentification (int *) ;
 int log_Printf (int ,char*,int ,int ) ;
 int stub1 (struct fsm*) ;
 int timer_Start (int *) ;

__attribute__((used)) static void
FsmSendConfigReq(struct fsm *fp)
{
  if (fp->more.reqs-- > 0 && fp->restart-- > 0) {
    (*fp->fn->SendConfigReq)(fp);
    timer_Start(&fp->FsmTimer);
  } else {
    if (fp->more.reqs < 0)
      log_Printf(LogPHASE, "%s: Too many %s REQs sent - abandoning "
                 "negotiation\n", fp->link->name, fp->name);
    lcp_SendIdentification(&fp->link->lcp);
    fsm_Close(fp);
  }
}
