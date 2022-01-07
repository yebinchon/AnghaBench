
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_5__ {int * sa_data; } ;
struct ifreq {int ifr_mtu; TYPE_2__ ifr_addr; } ;
struct ifnet {int if_mtu; int if_softc; int (* if_init ) (int ) ;int if_flags; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct fw_hwaddr {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_6__ {int fc_hwaddr; } ;
struct TYPE_4__ {int sa_family; } ;



 int EINVAL ;
 int IFF_UP ;
 TYPE_3__* IFP2FWC (struct ifnet*) ;



 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int bcopy (int *,int *,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int
firewire_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct ifaddr *ifa = (struct ifaddr *) data;
 struct ifreq *ifr = (struct ifreq *) data;
 int error = 0;

 switch (command) {
 case 129:
  ifp->if_flags |= IFF_UP;

  switch (ifa->ifa_addr->sa_family) {






  default:
   ifp->if_init(ifp->if_softc);
   break;
  }
  break;

 case 130:
  bcopy(&IFP2FWC(ifp)->fc_hwaddr, &ifr->ifr_addr.sa_data[0],
      sizeof(struct fw_hwaddr));
  break;

 case 128:



  if (ifr->ifr_mtu > 1500) {
   error = EINVAL;
  } else {
   ifp->if_mtu = ifr->ifr_mtu;
  }
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}
