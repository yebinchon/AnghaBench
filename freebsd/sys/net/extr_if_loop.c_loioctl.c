
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int sa_family; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; TYPE_1__ ifr_addr; } ;
struct ifnet {int if_flags; int if_capenable; int if_hwassist; int if_mtu; int if_drv_flags; } ;
typedef scalar_t__ caddr_t ;




 int EAFNOSUPPORT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int LO_CSUM_FEATURES ;
 int LO_CSUM_FEATURES6 ;






 int if_link_state_change (struct ifnet*,int ) ;

int
loioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 int error = 0, mask;

 switch (cmd) {
 case 131:
  ifp->if_flags |= IFF_UP;
  ifp->if_drv_flags |= IFF_DRV_RUNNING;
  if_link_state_change(ifp, LINK_STATE_UP);



  break;

 case 133:
 case 132:
  if (ifr == ((void*)0)) {
   error = EAFNOSUPPORT;
   break;
  }
  switch (ifr->ifr_addr.sa_family) {
  default:
   error = EAFNOSUPPORT;
   break;
  }
  break;

 case 128:
  ifp->if_mtu = ifr->ifr_mtu;
  break;

 case 129:
  if_link_state_change(ifp, (ifp->if_flags & IFF_UP) ?
      LINK_STATE_UP: LINK_STATE_DOWN);
  break;

 case 130:
  mask = ifp->if_capenable ^ ifr->ifr_reqcap;
  if ((mask & IFCAP_RXCSUM) != 0)
   ifp->if_capenable ^= IFCAP_RXCSUM;
  if ((mask & IFCAP_TXCSUM) != 0)
   ifp->if_capenable ^= IFCAP_TXCSUM;
  if ((mask & IFCAP_RXCSUM_IPV6) != 0) {



   error = EOPNOTSUPP;
   break;

  }
  if ((mask & IFCAP_TXCSUM_IPV6) != 0) {



   error = EOPNOTSUPP;
   break;

  }
  ifp->if_hwassist = 0;
  if (ifp->if_capenable & IFCAP_TXCSUM)
   ifp->if_hwassist = LO_CSUM_FEATURES;




  break;

 default:
  error = EINVAL;
 }
 return (error);
}
