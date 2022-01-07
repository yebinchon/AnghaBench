
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct tuntap_softc {int tun_flags; int tun_pid; } ;
struct ifstat {char* ascii; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_capenable; int if_mtu; struct tuntap_softc* if_softc; } ;
struct ifmediareq {int ifm_count; int ifm_ulist; void* ifm_active; void* ifm_current; int ifm_status; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENXIO ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 void* IFM_ETHER ;
 int TUNDEBUG (struct ifnet*,char*) ;
 int TUN_L2 ;
 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_OPEN ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int VLAN_CAPABILITIES (struct ifnet*) ;
 int copyout (int*,int ,int) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int snprintf (char*,int,char*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int tun_caps_changed (struct ifnet*) ;
 int tun_ioctl_sx ;
 int tuninit (struct ifnet*) ;

__attribute__((used)) static int
tunifioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 struct tuntap_softc *tp;
 struct ifstat *ifs;
 struct ifmediareq *ifmr;
 int dummy, error = 0;
 bool l2tun;

 ifmr = ((void*)0);
 sx_xlock(&tun_ioctl_sx);
 tp = ifp->if_softc;
 if (tp == ((void*)0)) {
  error = ENXIO;
  goto bad;
 }
 l2tun = (tp->tun_flags & TUN_L2) != 0;
 switch(cmd) {
 case 132:
  ifs = (struct ifstat *)data;
  TUN_LOCK(tp);
  if (tp->tun_pid)
   snprintf(ifs->ascii, sizeof(ifs->ascii),
       "\tOpened by PID %d\n", tp->tun_pid);
  else
   ifs->ascii[0] = '\0';
  TUN_UNLOCK(tp);
  break;
 case 131:
  if (l2tun)
   error = ether_ioctl(ifp, cmd, data);
  else
   tuninit(ifp);
  if (error == 0)
      TUNDEBUG(ifp, "address set\n");
  break;
 case 128:
  ifp->if_mtu = ifr->ifr_mtu;
  TUNDEBUG(ifp, "mtu set\n");
  break;
 case 129:
 case 135:
 case 134:
  break;
 case 133:
  if (!l2tun) {
   error = EINVAL;
   break;
  }

  ifmr = (struct ifmediareq *)data;
  dummy = ifmr->ifm_count;
  ifmr->ifm_count = 1;
  ifmr->ifm_status = IFM_AVALID;
  ifmr->ifm_active = IFM_ETHER;
  if (tp->tun_flags & TUN_OPEN)
   ifmr->ifm_status |= IFM_ACTIVE;
  ifmr->ifm_current = ifmr->ifm_active;
  if (dummy >= 1) {
   int media = IFM_ETHER;
   error = copyout(&media, ifmr->ifm_ulist, sizeof(int));
  }
  break;
 case 130:
  TUN_LOCK(tp);
  ifp->if_capenable = ifr->ifr_reqcap;
  tun_caps_changed(ifp);
  TUN_UNLOCK(tp);
  VLAN_CAPABILITIES(ifp);
  break;
 default:
  if (l2tun) {
   error = ether_ioctl(ifp, cmd, data);
  } else {
   error = EINVAL;
  }
 }
bad:
 sx_xunlock(&tun_ioctl_sx);
 return (error);
}
