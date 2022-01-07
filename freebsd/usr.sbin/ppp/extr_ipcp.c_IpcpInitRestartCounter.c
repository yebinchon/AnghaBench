
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int timeout; int maxreq; int maxtrm; } ;
struct TYPE_6__ {TYPE_2__ fsm; } ;
struct ipcp {TYPE_3__ cfg; } ;
struct TYPE_4__ {int load; } ;
struct fsm {int restart; TYPE_1__ FsmTimer; } ;




 int SECTICKS ;
 struct ipcp* fsm2ipcp (struct fsm*) ;

__attribute__((used)) static void
IpcpInitRestartCounter(struct fsm *fp, int what)
{

  struct ipcp *ipcp = fsm2ipcp(fp);

  fp->FsmTimer.load = ipcp->cfg.fsm.timeout * SECTICKS;
  switch (what) {
    case 129:
      fp->restart = ipcp->cfg.fsm.maxreq;
      break;
    case 128:
      fp->restart = ipcp->cfg.fsm.maxtrm;
      break;
    default:
      fp->restart = 1;
      break;
  }
}
