
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp {int ipv6cp; int ipcp; } ;
struct link {int dummy; } ;


 int ipcp_SetLink (int *,struct link*) ;
 int ipv6cp_SetLink (int *,struct link*) ;

void
ncp_SetLink(struct ncp *ncp, struct link *l)
{
  ipcp_SetLink(&ncp->ipcp, l);

  ipv6cp_SetLink(&ncp->ipv6cp, l);

}
