
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
struct ipv6cp {scalar_t__ peer_tokenreq; TYPE_3__ cfg; int throughput; } ;
struct TYPE_5__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_1__ more; int bundle; TYPE_4__* link; } ;
struct TYPE_8__ {int name; } ;


 int Enabled (int ,int ) ;
 int LogIPV6CP ;
 int OPT_THROUGHPUT ;
 struct ipv6cp* fsm2ipv6cp (struct fsm*) ;
 int log_Printf (int ,char*,int ) ;
 int throughput_start (int *,char*,int ) ;

__attribute__((used)) static void
ipv6cp_LayerStart(struct fsm *fp)
{

  struct ipv6cp *ipv6cp = fsm2ipv6cp(fp);

  log_Printf(LogIPV6CP, "%s: LayerStart.\n", fp->link->name);
  throughput_start(&ipv6cp->throughput, "IPV6CP throughput",
                   Enabled(fp->bundle, OPT_THROUGHPUT));
  fp->more.reqs = fp->more.naks = fp->more.rejs = ipv6cp->cfg.fsm.maxreq * 3;
  ipv6cp->peer_tokenreq = 0;
}
