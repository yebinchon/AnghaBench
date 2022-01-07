
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct physical {int hdlc; } ;
struct TYPE_6__ {int maxreq; } ;
struct TYPE_7__ {TYPE_2__ fsm; } ;
struct lcp {TYPE_3__ cfg; int his_accmap; int want_accmap; } ;
struct TYPE_5__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_1__ more; TYPE_4__* link; } ;
struct TYPE_8__ {int name; } ;


 int LogLCP ;
 struct lcp* fsm2lcp (struct fsm*) ;
 int hdlc_StartTimer (int *) ;
 int lcp_SendIdentification (struct lcp*) ;
 struct physical* link2physical (TYPE_4__*) ;
 int log_Printf (int ,char*,int ) ;
 int lqr_Start (struct lcp*) ;
 int physical_SetAsyncParams (struct physical*,int ,int ) ;

__attribute__((used)) static int
LcpLayerUp(struct fsm *fp)
{

  struct physical *p = link2physical(fp->link);
  struct lcp *lcp = fsm2lcp(fp);

  log_Printf(LogLCP, "%s: LayerUp\n", fp->link->name);
  physical_SetAsyncParams(p, lcp->want_accmap, lcp->his_accmap);
  lqr_Start(lcp);
  hdlc_StartTimer(&p->hdlc);
  fp->more.reqs = fp->more.naks = fp->more.rejs = lcp->cfg.fsm.maxreq * 3;

  lcp_SendIdentification(lcp);

  return 1;
}
