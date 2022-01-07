
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp {int ipcp; } ;
struct iface_addr {int ifa; } ;


 scalar_t__ AF_INET ;
 int ipcp_IfaceAddrDeleted (int *,struct iface_addr const*) ;
 scalar_t__ ncprange_family (int *) ;

void
ncp_IfaceAddrDeleted(struct ncp *ncp, const struct iface_addr *addr)
{
  if (ncprange_family(&addr->ifa) == AF_INET)
    ipcp_IfaceAddrDeleted(&ncp->ipcp, addr);
}
