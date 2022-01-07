
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct rcv_queue {int lro_enabled; } ;
struct nicvf {int if_flags; TYPE_2__* qs; struct ifnet* ifp; int hw_tso; int if_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int dummy; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef scalar_t__ caddr_t ;
typedef int boolean_t ;
struct TYPE_4__ {int rq_cnt; struct rcv_queue* rq; } ;
struct TYPE_3__ {int sa_family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EINVAL ;
 int FALSE ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_NOARP ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int NICVF_CORE_LOCK (struct nicvf*) ;
 int NICVF_CORE_UNLOCK (struct nicvf*) ;
 int NIC_HW_MAX_FRS ;
 int NIC_HW_MIN_FRS ;
 int TRUE ;
 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int if_getcapenable (struct ifnet*) ;
 int if_getdrvflags (struct ifnet*) ;
 int if_getflags (struct ifnet*) ;
 struct nicvf* if_getsoftc (struct ifnet*) ;
 int if_setflagbits (struct ifnet*,int,int ) ;
 int if_setmtu (struct ifnet*,int ) ;
 int if_togglecapenable (struct ifnet*,int) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int nicvf_if_init (struct nicvf*) ;
 int nicvf_if_init_locked (struct nicvf*) ;
 int nicvf_set_multicast (struct nicvf*) ;
 int nicvf_set_promiscous (struct nicvf*) ;
 int nicvf_stop_locked (struct nicvf*) ;
 int nicvf_update_hw_max_frs (struct nicvf*,int ) ;

__attribute__((used)) static int
nicvf_if_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct nicvf *nic;
 struct rcv_queue *rq;
 struct ifreq *ifr;
 uint32_t flags;
 int mask, err;
 int rq_idx;





 nic = if_getsoftc(ifp);
 ifr = (struct ifreq *)data;



 err = 0;
 switch (cmd) {
 case 132:
  err = ether_ioctl(ifp, cmd, data);
  break;
 case 128:
  if (ifr->ifr_mtu < NIC_HW_MIN_FRS ||
      ifr->ifr_mtu > NIC_HW_MAX_FRS) {
   err = EINVAL;
  } else {
   NICVF_CORE_LOCK(nic);
   err = nicvf_update_hw_max_frs(nic, ifr->ifr_mtu);
   if (err == 0)
    if_setmtu(ifp, ifr->ifr_mtu);
   NICVF_CORE_UNLOCK(nic);
  }
  break;
 case 130:
  NICVF_CORE_LOCK(nic);
  flags = if_getflags(ifp);
  if (flags & IFF_UP) {
   if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
    if ((flags ^ nic->if_flags) & IFF_PROMISC) {





    }

    if ((flags ^ nic->if_flags) & IFF_ALLMULTI) {





    }
   } else {
    nicvf_if_init_locked(nic);
   }
  } else if (if_getdrvflags(ifp) & IFF_DRV_RUNNING)
   nicvf_stop_locked(nic);

  nic->if_flags = flags;
  NICVF_CORE_UNLOCK(nic);
  break;

 case 135:
 case 134:
  if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {






  }
  break;

 case 129:
 case 133:
  err = ifmedia_ioctl(ifp, ifr, &nic->if_media, cmd);
  break;

 case 131:
  mask = if_getcapenable(ifp) ^ ifr->ifr_reqcap;
  if (mask & IFCAP_VLAN_MTU) {

   if_togglecapenable(ifp, IFCAP_VLAN_MTU);
  }
  if (mask & IFCAP_TXCSUM)
   if_togglecapenable(ifp, IFCAP_TXCSUM);
  if (mask & IFCAP_RXCSUM)
   if_togglecapenable(ifp, IFCAP_RXCSUM);
  if ((mask & IFCAP_TSO4) && nic->hw_tso)
   if_togglecapenable(ifp, IFCAP_TSO4);
  if (mask & IFCAP_LRO) {




   NICVF_CORE_LOCK(nic);
   if_togglecapenable(ifp, IFCAP_LRO);
   if ((if_getdrvflags(nic->ifp) & IFF_DRV_RUNNING) != 0) {







    for (rq_idx = 0;
        rq_idx < nic->qs->rq_cnt; rq_idx++) {
     rq = &nic->qs->rq[rq_idx];
     rq->lro_enabled = !rq->lro_enabled;
    }
   }
   NICVF_CORE_UNLOCK(nic);
  }

  break;

 default:
  err = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (err);
}
