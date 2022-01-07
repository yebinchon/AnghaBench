
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physical {int hdlc; } ;
struct fsm {TYPE_1__* link; } ;
struct TYPE_2__ {int name; } ;


 int LogLCP ;
 int fsm2lcp (struct fsm*) ;
 int hdlc_StopTimer (int *) ;
 int lcp_Setup (int ,int ) ;
 struct physical* link2physical (TYPE_1__*) ;
 int log_Printf (int ,char*,int ) ;
 int lqr_StopTimer (struct physical*) ;

__attribute__((used)) static void
LcpLayerDown(struct fsm *fp)
{

  struct physical *p = link2physical(fp->link);

  log_Printf(LogLCP, "%s: LayerDown\n", fp->link->name);
  hdlc_StopTimer(&p->hdlc);
  lqr_StopTimer(p);
  lcp_Setup(fsm2lcp(fp), 0);
}
