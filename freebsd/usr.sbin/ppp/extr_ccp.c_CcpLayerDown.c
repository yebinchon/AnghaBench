
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fsm {TYPE_1__* link; } ;
struct ccp_opt {struct ccp_opt* next; } ;
struct TYPE_11__ {size_t algorithm; struct ccp_opt* opt; int * state; } ;
struct TYPE_9__ {size_t algorithm; int * state; } ;
struct ccp {TYPE_5__ out; scalar_t__ my_reject; scalar_t__ his_reject; TYPE_3__ in; } ;
struct TYPE_10__ {int (* Term ) (int *) ;} ;
struct TYPE_8__ {int (* Term ) (int *) ;} ;
struct TYPE_12__ {TYPE_4__ o; TYPE_2__ i; } ;
struct TYPE_7__ {int name; } ;


 int LogCCP ;
 TYPE_6__** algorithm ;
 int ccp_Setup (struct ccp*) ;
 int free (struct ccp_opt*) ;
 struct ccp* fsm2ccp (struct fsm*) ;
 int log_Printf (int ,char*,int ) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

__attribute__((used)) static void
CcpLayerDown(struct fsm *fp)
{

  struct ccp *ccp = fsm2ccp(fp);
  struct ccp_opt *next;

  log_Printf(LogCCP, "%s: LayerDown.\n", fp->link->name);
  if (ccp->in.state != ((void*)0)) {
    (*algorithm[ccp->in.algorithm]->i.Term)(ccp->in.state);
    ccp->in.state = ((void*)0);
    ccp->in.algorithm = -1;
  }
  if (ccp->out.state != ((void*)0)) {
    (*algorithm[ccp->out.algorithm]->o.Term)(ccp->out.state);
    ccp->out.state = ((void*)0);
    ccp->out.algorithm = -1;
  }
  ccp->his_reject = ccp->my_reject = 0;

  while (ccp->out.opt) {
    next = ccp->out.opt->next;
    free(ccp->out.opt);
    ccp->out.opt = next;
  }
  ccp_Setup(ccp);
}
