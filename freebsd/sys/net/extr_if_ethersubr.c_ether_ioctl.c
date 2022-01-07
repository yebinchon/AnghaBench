
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int * sa_data; } ;
struct ifreq {int ifr_lan_pcp; int ifr_mtu; TYPE_2__ ifr_addr; } ;
struct ifnet {int if_pcp; int if_mtu; int if_softc; int (* if_init ) (int ) ;int if_flags; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {int sa_family; } ;



 int EINVAL ;
 int ETHERMTU ;
 int ETHER_ADDR_LEN ;
 int EVENTHANDLER_INVOKE (int ,struct ifnet*,int ) ;
 int IFF_UP ;
 int IFNET_EVENT_PCP ;
 int IFNET_PCP_NONE ;
 int IF_LLADDR (struct ifnet*) ;
 int PRIV_NET_SETLANPCP ;





 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int bcopy (int ,int *,int ) ;
 int curthread ;
 int ifnet_event ;
 int priv_check (int ,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int
ether_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct ifaddr *ifa = (struct ifaddr *) data;
 struct ifreq *ifr = (struct ifreq *) data;
 int error = 0;

 switch (command) {
 case 130:
  ifp->if_flags |= IFF_UP;

  switch (ifa->ifa_addr->sa_family) {






  default:
   ifp->if_init(ifp->if_softc);
   break;
  }
  break;

 case 132:
  bcopy(IF_LLADDR(ifp), &ifr->ifr_addr.sa_data[0],
      ETHER_ADDR_LEN);
  break;

 case 129:



  if (ifr->ifr_mtu > ETHERMTU) {
   error = EINVAL;
  } else {
   ifp->if_mtu = ifr->ifr_mtu;
  }
  break;

 case 128:
  error = priv_check(curthread, PRIV_NET_SETLANPCP);
  if (error != 0)
   break;
  if (ifr->ifr_lan_pcp > 7 &&
      ifr->ifr_lan_pcp != IFNET_PCP_NONE) {
   error = EINVAL;
  } else {
   ifp->if_pcp = ifr->ifr_lan_pcp;

   EVENTHANDLER_INVOKE(ifnet_event, ifp, IFNET_EVENT_PCP);
  }
  break;

 case 131:
  ifr->ifr_lan_pcp = ifp->if_pcp;
  break;

 default:
  error = EINVAL;
  break;
 }
 return (error);
}
