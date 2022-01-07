
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int timeout; int maxreq; int maxtrm; } ;
struct TYPE_6__ {TYPE_2__ fsm; } ;
struct ipv6cp {TYPE_3__ cfg; } ;
struct TYPE_4__ {int load; } ;
struct fsm {int restart; TYPE_1__ FsmTimer; } ;




 int SECTICKS ;
 struct ipv6cp* fsm2ipv6cp (struct fsm*) ;

__attribute__((used)) static void
ipv6cp_InitRestartCounter(struct fsm *fp, int what)
{

  struct ipv6cp *ipv6cp = fsm2ipv6cp(fp);

  fp->FsmTimer.load = ipv6cp->cfg.fsm.timeout * SECTICKS;
  switch (what) {
    case 129:
      fp->restart = ipv6cp->cfg.fsm.maxreq;
      break;
    case 128:
      fp->restart = ipv6cp->cfg.fsm.maxtrm;
      break;
    default:
      fp->restart = 1;
      break;
  }
}
