
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ifreq {int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int (* if_ioctl ) (struct ifnet*,int,scalar_t__) ;struct ieee80211vap* if_softc; int (* if_init ) (struct ieee80211vap*) ;int if_mtu; int * if_bridge; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct ieee80211vap {int iv_ifflags; int iv_caps; int iv_stats; int iv_media; int iv_myaddr; int iv_state; int iv_opmode; struct ieee80211com* iv_ic; } ;
struct ieee80211req {int dummy; } ;
struct ieee80211com {int ic_nrunning; int (* ic_ioctl ) (struct ieee80211com*,int,scalar_t__) ;int ic_mcast_task; } ;
struct epoch_tracker {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int sa_family; } ;



 int EINVAL ;
 int ENOTTY ;
 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_C_TDMA ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_MTU_MAX ;
 int IEEE80211_MTU_MIN ;
 int IEEE80211_M_AHDEMO ;
 int IEEE80211_M_MONITOR ;
 int IEEE80211_S_INIT ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PPROMISC ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int IF_LLADDR (struct ifnet*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int PRIV_NET80211_MANAGE ;
 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int copyout (int *,int ,int) ;
 int curthread ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ieee80211_allmulti (struct ieee80211vap*,int) ;
 int ieee80211_com_vdecref (struct ieee80211vap*) ;
 int ieee80211_com_vincref (struct ieee80211vap*) ;
 int ieee80211_ioctl_get80211 (struct ieee80211vap*,int,struct ieee80211req*) ;
 int ieee80211_ioctl_set80211 (struct ieee80211vap*,int,struct ieee80211req*) ;
 int ieee80211_promisc (struct ieee80211vap*,int) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int ieee80211_start_locked (struct ieee80211vap*) ;
 int ieee80211_stop_locked (struct ieee80211vap*) ;
 int ieee80211_waitfor_parent (struct ieee80211com*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int priv_check (int ,int ) ;
 int stub1 (struct ieee80211vap*) ;
 int stub2 (struct ieee80211vap*) ;
 int stub3 (struct ieee80211com*,int,scalar_t__) ;

int
ieee80211_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ieee80211com *ic = vap->iv_ic;
 int error = 0, wait = 0, ic_used;
 struct ifreq *ifr;
 struct ifaddr *ifa;

 ic_used = (cmd != 128 && cmd != 134);
 if (ic_used && (error = ieee80211_com_vincref(vap)) != 0)
  return (error);

 switch (cmd) {
 case 130:
  IEEE80211_LOCK(ic);
  if ((ifp->if_flags ^ vap->iv_ifflags) & IFF_PROMISC) {






   if (ifp->if_bridge == ((void*)0) ||
       (ifp->if_flags & IFF_PPROMISC) != 0 ||
       vap->iv_opmode == IEEE80211_M_MONITOR ||
       (vap->iv_opmode == IEEE80211_M_AHDEMO &&
       (vap->iv_caps & IEEE80211_C_TDMA) == 0)) {
    ieee80211_promisc(vap,
        ifp->if_flags & IFF_PROMISC);
    vap->iv_ifflags ^= IFF_PROMISC;
   }
  }
  if ((ifp->if_flags ^ vap->iv_ifflags) & IFF_ALLMULTI) {
   ieee80211_allmulti(vap, ifp->if_flags & IFF_ALLMULTI);
   vap->iv_ifflags ^= IFF_ALLMULTI;
  }
  if (ifp->if_flags & IFF_UP) {






   if (vap->iv_state == IEEE80211_S_INIT) {
    if (ic->ic_nrunning == 0)
     wait = 1;
    ieee80211_start_locked(vap);
   }
  } else if (ifp->if_drv_flags & IFF_DRV_RUNNING) {




   if (ic->ic_nrunning == 1)
    wait = 1;
   ieee80211_stop_locked(vap);
  }
  IEEE80211_UNLOCK(ic);

  if (wait) {
   struct epoch_tracker et;

   ieee80211_waitfor_parent(ic);
   NET_EPOCH_ENTER(et);
   if (ifp->if_ioctl == ieee80211_ioctl &&
       (ifp->if_flags & IFF_UP) == 0 &&
       !IEEE80211_ADDR_EQ(vap->iv_myaddr, IF_LLADDR(ifp)))
    IEEE80211_ADDR_COPY(vap->iv_myaddr,
        IF_LLADDR(ifp));
   NET_EPOCH_EXIT(et);
  }
  break;
 case 137:
 case 136:
  ieee80211_runtask(ic, &ic->ic_mcast_task);
  break;
 case 129:
 case 133:
  ifr = (struct ifreq *)data;
  error = ifmedia_ioctl(ifp, ifr, &vap->iv_media, cmd);
  break;
 case 135:
  error = ieee80211_ioctl_get80211(vap, cmd,
    (struct ieee80211req *) data);
  break;
 case 132:
  error = priv_check(curthread, PRIV_NET80211_MANAGE);
  if (error == 0)
   error = ieee80211_ioctl_set80211(vap, cmd,
     (struct ieee80211req *) data);
  break;
 case 134:
  ifr = (struct ifreq *)data;
  copyout(&vap->iv_stats, ifr_data_get_ptr(ifr),
      sizeof (vap->iv_stats));
  break;
 case 128:
  ifr = (struct ifreq *)data;
  if (!(IEEE80211_MTU_MIN <= ifr->ifr_mtu &&
      ifr->ifr_mtu <= IEEE80211_MTU_MAX))
   error = EINVAL;
  else
   ifp->if_mtu = ifr->ifr_mtu;
  break;
 case 131:







  ifa = (struct ifaddr *) data;
  switch (ifa->ifa_addr->sa_family) {
  default:
   if ((ifp->if_flags & IFF_UP) == 0) {
    ifp->if_flags |= IFF_UP;
    ifp->if_init(ifp->if_softc);
   }
   break;
  }
  break;
 default:




  if (ic->ic_ioctl != ((void*)0) &&
      (error = ic->ic_ioctl(ic, cmd, data)) != ENOTTY)
   break;
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 if (ic_used)
  ieee80211_com_vdecref(vap);

 return (error);
}
