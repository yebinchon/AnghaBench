
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* bundle; } ;
struct ipcp {int my_ip; TYPE_2__ fsm; int peer_ip; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {scalar_t__ NatEnabled; TYPE_3__* iface; } ;


 int IFF_UP ;
 int LibAliasSetAddress (int ,int ) ;
 int LogERROR ;
 int iface_SetFlags (int ,int ) ;
 int ipcp_SetIPaddress (struct ipcp*,int ,int ) ;
 int la ;
 int log_Printf (int ,char*,...) ;

int
ipcp_InterfaceUp(struct ipcp *ipcp)
{
  if (!ipcp_SetIPaddress(ipcp, ipcp->my_ip, ipcp->peer_ip)) {
    log_Printf(LogERROR, "ipcp_InterfaceUp: unable to set ip address\n");
    return 0;
  }

  if (!iface_SetFlags(ipcp->fsm.bundle->iface->name, IFF_UP)) {
    log_Printf(LogERROR, "ipcp_InterfaceUp: Can't set the IFF_UP flag on %s\n",
               ipcp->fsm.bundle->iface->name);
    return 0;
  }


  if (ipcp->fsm.bundle->NatEnabled)
    LibAliasSetAddress(la, ipcp->my_ip);


  return 1;
}
