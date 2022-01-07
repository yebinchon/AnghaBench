
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct tsec_softc {int tsec_if_flags; int is_etsec; TYPE_1__* tsec_mii; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_mtu; struct tsec_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int mii_media; } ;


 int EINVAL ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;







 int TSEC_GLOBAL_LOCK (struct tsec_softc*) ;
 int TSEC_GLOBAL_UNLOCK (struct tsec_softc*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int tsec_init_locked (struct tsec_softc*) ;
 int tsec_intrs_ctl (struct tsec_softc*,int) ;
 int tsec_offload_setup (struct tsec_softc*) ;
 int tsec_poll ;
 int tsec_set_mtu (struct tsec_softc*,int ) ;
 int tsec_setfilter (struct tsec_softc*) ;
 int tsec_setup_multicast (struct tsec_softc*) ;
 int tsec_start (struct ifnet*) ;
 int tsec_stop (struct tsec_softc*) ;

__attribute__((used)) static int
tsec_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct tsec_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int mask, error = 0;

 switch (command) {
 case 128:
  TSEC_GLOBAL_LOCK(sc);
  if (tsec_set_mtu(sc, ifr->ifr_mtu))
   ifp->if_mtu = ifr->ifr_mtu;
  else
   error = EINVAL;
  TSEC_GLOBAL_UNLOCK(sc);
  break;
 case 130:
  TSEC_GLOBAL_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    if ((sc->tsec_if_flags ^ ifp->if_flags) &
        IFF_PROMISC)
     tsec_setfilter(sc);

    if ((sc->tsec_if_flags ^ ifp->if_flags) &
        IFF_ALLMULTI)
     tsec_setup_multicast(sc);
   } else
    tsec_init_locked(sc);
  } else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   tsec_stop(sc);

  sc->tsec_if_flags = ifp->if_flags;
  TSEC_GLOBAL_UNLOCK(sc);
  break;
 case 134:
 case 133:
  if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
   TSEC_GLOBAL_LOCK(sc);
   tsec_setup_multicast(sc);
   TSEC_GLOBAL_UNLOCK(sc);
  }
 case 132:
 case 129:
  error = ifmedia_ioctl(ifp, ifr, &sc->tsec_mii->mii_media,
      command);
  break;
 case 131:
  mask = ifp->if_capenable ^ ifr->ifr_reqcap;
  if ((mask & IFCAP_HWCSUM) && sc->is_etsec) {
   TSEC_GLOBAL_LOCK(sc);
   ifp->if_capenable &= ~IFCAP_HWCSUM;
   ifp->if_capenable |= IFCAP_HWCSUM & ifr->ifr_reqcap;
   tsec_offload_setup(sc);
   TSEC_GLOBAL_UNLOCK(sc);
  }
  break;

 default:
  error = ether_ioctl(ifp, command, data);
 }


 if (ifp->if_flags & IFF_UP)
  tsec_start(ifp);
 return (error);
}
