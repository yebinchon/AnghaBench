
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int if_hwassist; int if_mtu; struct et_softc* if_softc; } ;
struct et_softc {int sc_if_flags; int sc_flags; int sc_miibus; } ;
typedef scalar_t__ caddr_t ;


 int EOPNOTSUPP ;
 int ET_CSUM_FEATURES ;
 int ET_FLAG_JUMBO ;
 int ET_FRAMELEN (int ) ;
 int ET_JUMBO_FRAMELEN ;
 int ET_LOCK (struct et_softc*) ;
 int ET_UNLOCK (struct et_softc*) ;
 int IFCAP_TXCSUM ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int MCLBYTES ;







 struct mii_data* device_get_softc (int ) ;
 int et_init_locked (struct et_softc*) ;
 int et_setmulti (struct et_softc*) ;
 int et_stop (struct et_softc*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
et_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct et_softc *sc;
 struct mii_data *mii;
 struct ifreq *ifr;
 int error, mask, max_framelen;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;
 error = 0;


 switch (cmd) {
 case 130:
  ET_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    if ((ifp->if_flags ^ sc->sc_if_flags) &
    (IFF_ALLMULTI | IFF_PROMISC | IFF_BROADCAST))
     et_setmulti(sc);
   } else {
    et_init_locked(sc);
   }
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    et_stop(sc);
  }
  sc->sc_if_flags = ifp->if_flags;
  ET_UNLOCK(sc);
  break;

 case 129:
 case 132:
  mii = device_get_softc(sc->sc_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;

 case 134:
 case 133:
  if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
   ET_LOCK(sc);
   et_setmulti(sc);
   ET_UNLOCK(sc);
  }
  break;

 case 128:
  ET_LOCK(sc);





   max_framelen = MCLBYTES - 1;

  if (ET_FRAMELEN(ifr->ifr_mtu) > max_framelen) {
   error = EOPNOTSUPP;
   ET_UNLOCK(sc);
   break;
  }

  if (ifp->if_mtu != ifr->ifr_mtu) {
   ifp->if_mtu = ifr->ifr_mtu;
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    et_init_locked(sc);
   }
  }
  ET_UNLOCK(sc);
  break;

 case 131:
  ET_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (IFCAP_TXCSUM & ifp->if_capabilities) != 0) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if ((IFCAP_TXCSUM & ifp->if_capenable) != 0)
    ifp->if_hwassist |= ET_CSUM_FEATURES;
   else
    ifp->if_hwassist &= ~ET_CSUM_FEATURES;
  }
  ET_UNLOCK(sc);
  break;

 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }
 return (error);
}
