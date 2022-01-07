
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipcp {int throughput; } ;
struct fsm {TYPE_1__* link; } ;
struct TYPE_2__ {int name; } ;


 int LogIPCP ;
 struct ipcp* fsm2ipcp (struct fsm*) ;
 int log_Printf (int ,char*,int ) ;
 int throughput_log (int *,int ,int *) ;
 int throughput_stop (int *) ;

__attribute__((used)) static void
IpcpLayerFinish(struct fsm *fp)
{

  struct ipcp *ipcp = fsm2ipcp(fp);

  log_Printf(LogIPCP, "%s: LayerFinish.\n", fp->link->name);
  throughput_stop(&ipcp->throughput);
  throughput_log(&ipcp->throughput, LogIPCP, ((void*)0));
}
