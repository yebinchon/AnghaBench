
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {TYPE_1__* if_debugnet_methods; } ;
struct debugnet_pcb {struct ifnet* dp_ifp; } ;
struct TYPE_2__ {int (* dn_poll ) (struct ifnet*,int) ;} ;


 int stub1 (struct ifnet*,int) ;

void
debugnet_network_poll(struct debugnet_pcb *pcb)
{
 struct ifnet *ifp;

 ifp = pcb->dp_ifp;
 ifp->if_debugnet_methods->dn_poll(ifp, 1000);
}
