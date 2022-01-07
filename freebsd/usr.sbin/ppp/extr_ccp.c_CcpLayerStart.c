
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_2__ more; TYPE_1__* link; } ;
struct TYPE_7__ {int maxreq; } ;
struct TYPE_8__ {TYPE_3__ fsm; } ;
struct ccp {TYPE_4__ cfg; } ;
struct TYPE_5__ {int name; } ;


 int LogCCP ;
 struct ccp* fsm2ccp (struct fsm*) ;
 int log_Printf (int ,char*,int ) ;

__attribute__((used)) static void
CcpLayerStart(struct fsm *fp)
{

  struct ccp *ccp = fsm2ccp(fp);

  log_Printf(LogCCP, "%s: LayerStart.\n", fp->link->name);
  fp->more.reqs = fp->more.naks = fp->more.rejs = ccp->cfg.fsm.maxreq * 3;
}
