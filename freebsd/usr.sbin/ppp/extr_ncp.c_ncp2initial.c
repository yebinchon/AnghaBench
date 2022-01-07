
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fsm; } ;
struct TYPE_3__ {int fsm; } ;
struct ncp {TYPE_2__ ipv6cp; TYPE_1__ ipcp; } ;


 int fsm2initial (int *) ;

void
ncp2initial(struct ncp *ncp)
{
  fsm2initial(&ncp->ipcp.fsm);

  fsm2initial(&ncp->ipv6cp.fsm);

}
