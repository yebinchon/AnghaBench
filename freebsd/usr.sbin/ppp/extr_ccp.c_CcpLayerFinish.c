
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fsm {TYPE_3__* link; } ;
struct ccp_opt {struct ccp_opt* next; } ;
struct TYPE_5__ {struct ccp_opt* opt; } ;
struct ccp {TYPE_1__ out; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_4__ fsm; } ;
struct TYPE_7__ {TYPE_2__ lcp; int name; } ;


 int LogCCP ;
 int LogLCP ;
 scalar_t__ ST_OPENED ;
 scalar_t__ ccp_Required (struct ccp*) ;
 int free (struct ccp_opt*) ;
 struct ccp* fsm2ccp (struct fsm*) ;
 int fsm_Close (TYPE_4__*) ;
 int log_Printf (int ,char*,int ) ;

__attribute__((used)) static void
CcpLayerFinish(struct fsm *fp)
{

  struct ccp *ccp = fsm2ccp(fp);
  struct ccp_opt *next;

  log_Printf(LogCCP, "%s: LayerFinish.\n", fp->link->name);





  while (ccp->out.opt) {
    next = ccp->out.opt->next;
    free(ccp->out.opt);
    ccp->out.opt = next;
  }

  if (ccp_Required(ccp)) {
    if (fp->link->lcp.fsm.state == ST_OPENED)
      log_Printf(LogLCP, "%s: Closing due to CCP completion\n", fp->link->name);
    fsm_Close(&fp->link->lcp.fsm);
  }
}
