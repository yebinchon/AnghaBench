
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bundle* bundle; } ;
struct ipcp {TYPE_1__ fsm; } ;
struct iface_addr {int dummy; } ;
struct bundle {int dummy; } ;


 scalar_t__ Enabled (struct bundle*,int ) ;
 int OPT_PROXY ;
 int OPT_PROXYALL ;
 int arp_SetProxy ;
 int ipcp_proxyarp (struct ipcp*,int ,struct iface_addr const*) ;

void
ipcp_IfaceAddrAdded(struct ipcp *ipcp, const struct iface_addr *addr)
{
  struct bundle *bundle = ipcp->fsm.bundle;

  if (Enabled(bundle, OPT_PROXY) || Enabled(bundle, OPT_PROXYALL))
    ipcp_proxyarp(ipcp, arp_SetProxy, addr);
}
