
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp {int mp; int ipv6cp; int ipcp; } ;


 size_t ipcp_QueueLen (int *) ;
 scalar_t__ ipv6cp_QueueLen (int *) ;
 scalar_t__ mp_QueueLen (int *) ;

size_t
ncp_QueueLen(struct ncp *ncp)
{
  size_t result;

  result = ipcp_QueueLen(&ncp->ipcp);

  result += ipv6cp_QueueLen(&ncp->ipv6cp);

  result += mp_QueueLen(&ncp->mp);

  return result;
}
