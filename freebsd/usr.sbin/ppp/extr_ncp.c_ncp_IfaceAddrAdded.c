
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp {int ipv6cp; int ipcp; } ;
struct iface_addr {int ifa; } ;




 int ipcp_IfaceAddrAdded (int *,struct iface_addr const*) ;
 int ipv6cp_IfaceAddrAdded (int *,struct iface_addr const*) ;
 int ncprange_family (int *) ;

void
ncp_IfaceAddrAdded(struct ncp *ncp, const struct iface_addr *addr)
{
  switch (ncprange_family(&addr->ifa)) {
  case 129:
    ipcp_IfaceAddrAdded(&ncp->ipcp, addr);
    break;

  case 128:
    ipv6cp_IfaceAddrAdded(&ncp->ipv6cp, addr);
    break;

  }
}
