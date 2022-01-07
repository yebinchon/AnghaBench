
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int maxreq; } ;
struct TYPE_7__ {TYPE_2__ fsm; } ;
struct ipcp {scalar_t__ peer_req; TYPE_3__ cfg; int throughput; } ;
struct TYPE_5__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_1__ more; int bundle; TYPE_4__* link; } ;
struct TYPE_8__ {int name; } ;


 int Enabled (int ,int ) ;
 int LogIPCP ;
 int OPT_THROUGHPUT ;
 struct ipcp* fsm2ipcp (struct fsm*) ;
 int log_Printf (int ,char*,int ) ;
 int throughput_start (int *,char*,int ) ;

__attribute__((used)) static void
IpcpLayerStart(struct fsm *fp)
{

  struct ipcp *ipcp = fsm2ipcp(fp);

  log_Printf(LogIPCP, "%s: LayerStart.\n", fp->link->name);
  throughput_start(&ipcp->throughput, "IPCP throughput",
                   Enabled(fp->bundle, OPT_THROUGHPUT));
  fp->more.reqs = fp->more.naks = fp->more.rejs = ipcp->cfg.fsm.maxreq * 3;
  ipcp->peer_req = 0;
}
