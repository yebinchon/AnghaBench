
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int maxreq; } ;
struct TYPE_6__ {TYPE_1__ fsm; } ;
struct lcp {scalar_t__ mru_req; TYPE_2__ cfg; scalar_t__ LcpFailedMagic; } ;
struct TYPE_8__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_4__ more; TYPE_3__* link; } ;
struct TYPE_7__ {int name; } ;


 int LogLCP ;
 struct lcp* fsm2lcp (struct fsm*) ;
 int log_Printf (int ,char*,int ) ;

__attribute__((used)) static void
LcpLayerStart(struct fsm *fp)
{

  struct lcp *lcp = fsm2lcp(fp);

  log_Printf(LogLCP, "%s: LayerStart\n", fp->link->name);
  lcp->LcpFailedMagic = 0;
  fp->more.reqs = fp->more.naks = fp->more.rejs = lcp->cfg.fsm.maxreq * 3;
  lcp->mru_req = 0;
}
