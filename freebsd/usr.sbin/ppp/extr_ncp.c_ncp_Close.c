
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {TYPE_3__ fsm; } ;
struct TYPE_4__ {TYPE_3__ fsm; } ;
struct ncp {TYPE_2__ ipv6cp; TYPE_1__ ipcp; } ;


 scalar_t__ ST_CLOSED ;
 scalar_t__ ST_STARTING ;
 int fsm_Close (TYPE_3__*) ;

void
ncp_Close(struct ncp *ncp)
{
  if (ncp->ipcp.fsm.state > ST_CLOSED ||
      ncp->ipcp.fsm.state == ST_STARTING)
    fsm_Close(&ncp->ipcp.fsm);


  if (ncp->ipv6cp.fsm.state > ST_CLOSED ||
      ncp->ipv6cp.fsm.state == ST_STARTING)
    fsm_Close(&ncp->ipv6cp.fsm);

}
