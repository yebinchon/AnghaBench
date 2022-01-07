
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsm {int state; TYPE_1__* link; int LogLevel; } ;
struct TYPE_2__ {int name; } ;


 int FSM_REQ_TIMER ;
 int FsmInitRestartCounter (struct fsm*,int ) ;
 int FsmSendConfigReq (struct fsm*) ;
 int NewState (struct fsm*,int ) ;
 int ST_CLOSED ;

 int ST_REQSENT ;

 int State2Nam (int) ;
 int log_Printf (int ,char*,int ,...) ;

void
fsm_Up(struct fsm *fp)
{
  switch (fp->state) {
  case 129:
    log_Printf(fp->LogLevel, "FSM: Using \"%s\" as a transport\n",
              fp->link->name);
    NewState(fp, ST_CLOSED);
    break;
  case 128:
    FsmInitRestartCounter(fp, FSM_REQ_TIMER);
    FsmSendConfigReq(fp);
    NewState(fp, ST_REQSENT);
    break;
  default:
    log_Printf(fp->LogLevel, "%s: Oops, Up at %s\n",
              fp->link->name, State2Nam(fp->state));
    break;
  }
}
