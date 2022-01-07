
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipv6cp {int throughput; } ;
struct fsm {TYPE_1__* link; } ;
struct TYPE_2__ {int name; } ;


 int LogIPV6CP ;
 struct ipv6cp* fsm2ipv6cp (struct fsm*) ;
 int log_Printf (int ,char*,int ) ;
 int throughput_log (int *,int ,int *) ;
 int throughput_stop (int *) ;

__attribute__((used)) static void
ipv6cp_LayerFinish(struct fsm *fp)
{

  struct ipv6cp *ipv6cp = fsm2ipv6cp(fp);

  log_Printf(LogIPV6CP, "%s: LayerFinish.\n", fp->link->name);
  throughput_stop(&ipv6cp->throughput);
  throughput_log(&ipv6cp->throughput, LogIPV6CP, ((void*)0));
}
