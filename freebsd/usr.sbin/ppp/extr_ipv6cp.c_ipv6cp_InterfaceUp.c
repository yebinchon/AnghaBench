
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* bundle; } ;
struct ipv6cp {TYPE_3__ fsm; int his_ifid; int my_ifid; } ;
struct TYPE_5__ {TYPE_1__* iface; } ;
struct TYPE_4__ {int name; } ;


 int IFF_UP ;
 int LogERROR ;
 int iface_SetFlags (int ,int ) ;
 int ipcp_SetIPv6address (struct ipv6cp*,int ,int ) ;
 int log_Printf (int ,char*,...) ;

int
ipv6cp_InterfaceUp(struct ipv6cp *ipv6cp)
{
  if (!ipcp_SetIPv6address(ipv6cp, ipv6cp->my_ifid, ipv6cp->his_ifid)) {
    log_Printf(LogERROR, "ipv6cp_InterfaceUp: unable to set ipv6 address\n");
    return 0;
  }

  if (!iface_SetFlags(ipv6cp->fsm.bundle->iface->name, IFF_UP)) {
    log_Printf(LogERROR, "ipv6cp_InterfaceUp: Can't set the IFF_UP"
               " flag on %s\n", ipv6cp->fsm.bundle->iface->name);
    return 0;
  }

  return 1;
}
