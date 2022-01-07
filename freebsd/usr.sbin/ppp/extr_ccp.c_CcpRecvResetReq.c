
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fsm {int dummy; } ;
struct TYPE_5__ {size_t algorithm; int * state; } ;
struct ccp {TYPE_2__ out; } ;
struct TYPE_4__ {int (* Reset ) (int *) ;} ;
struct TYPE_6__ {TYPE_1__ o; } ;


 TYPE_3__** algorithm ;
 struct ccp* fsm2ccp (struct fsm*) ;
 int stub1 (int *) ;

__attribute__((used)) static int
CcpRecvResetReq(struct fsm *fp)
{

  struct ccp *ccp = fsm2ccp(fp);
  if (ccp->out.state == ((void*)0))
    return 1;
  return (*algorithm[ccp->out.algorithm]->o.Reset)(ccp->out.state);
}
