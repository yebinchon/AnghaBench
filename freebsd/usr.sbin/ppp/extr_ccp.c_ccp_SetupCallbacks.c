
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {void* name; } ;
struct TYPE_6__ {void* name; } ;
struct TYPE_5__ {void* name; } ;
struct TYPE_7__ {TYPE_4__ StoppedTimer; TYPE_2__ OpenTimer; TYPE_1__ FsmTimer; int * fn; } ;
struct ccp {TYPE_3__ fsm; } ;


 int ccp_Callbacks ;
 void** ccp_TimerNames ;

void
ccp_SetupCallbacks(struct ccp *ccp)
{
  ccp->fsm.fn = &ccp_Callbacks;
  ccp->fsm.FsmTimer.name = ccp_TimerNames[0];
  ccp->fsm.OpenTimer.name = ccp_TimerNames[1];
  ccp->fsm.StoppedTimer.name = ccp_TimerNames[2];
}
