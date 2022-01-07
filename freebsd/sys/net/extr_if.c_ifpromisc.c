
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; int if_pcount; } ;


 int IFF_PPROMISC ;
 int IFF_PROMISC ;
 int if_printf (struct ifnet*,char*,char*) ;
 int if_setflag (struct ifnet*,int,int ,int *,int) ;
 scalar_t__ log_promisc_mode_change ;

int
ifpromisc(struct ifnet *ifp, int pswitch)
{
 int error;
 int oldflags = ifp->if_flags;

 error = if_setflag(ifp, IFF_PROMISC, IFF_PPROMISC,
      &ifp->if_pcount, pswitch);

 if (error == 0 && ((ifp->if_flags ^ oldflags) & IFF_PROMISC) &&
            log_promisc_mode_change)
  if_printf(ifp, "promiscuous mode %s\n",
      (ifp->if_flags & IFF_PROMISC) ? "enabled" : "disabled");
 return (error);
}
