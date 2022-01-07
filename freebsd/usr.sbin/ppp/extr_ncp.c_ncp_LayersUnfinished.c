
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_3__ fsm; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_1__ fsm; } ;
struct ncp {TYPE_4__ ipv6cp; TYPE_2__ ipcp; } ;


 scalar_t__ ST_CLOSED ;
 scalar_t__ ST_STARTING ;

int
ncp_LayersUnfinished(struct ncp *ncp)
{
  int n = 0;

  if (ncp->ipcp.fsm.state > ST_CLOSED ||
      ncp->ipcp.fsm.state == ST_STARTING)
    n++;


  if (ncp->ipv6cp.fsm.state > ST_CLOSED ||
      ncp->ipv6cp.fsm.state == ST_STARTING)
    n++;


  return n;
}
