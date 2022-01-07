
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; struct gem_softc* if_softc; } ;
struct gem_softc {int sc_ifflags; int sc_csum_features; TYPE_1__* sc_mii; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int mii_media; } ;


 int CSUM_UDP ;
 int GEM_LOCK (struct gem_softc*) ;
 int GEM_UNLOCK (struct gem_softc*) ;
 int IFCAP_TXCSUM ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_LINK0 ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int gem_init_locked (struct gem_softc*) ;
 int gem_setladrf (struct gem_softc*) ;
 int gem_stop (struct ifnet*,int ) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
gem_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct gem_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int error;

 error = 0;
 switch (cmd) {
 case 129:
  GEM_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->sc_ifflags) &
       (IFF_ALLMULTI | IFF_PROMISC)) != 0)
    gem_setladrf(sc);
   else
    gem_init_locked(sc);
  } else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   gem_stop(ifp, 0);
  if ((ifp->if_flags & IFF_LINK0) != 0)
   sc->sc_csum_features |= CSUM_UDP;
  else
   sc->sc_csum_features &= ~CSUM_UDP;
  if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
   ifp->if_hwassist = sc->sc_csum_features;
  sc->sc_ifflags = ifp->if_flags;
  GEM_UNLOCK(sc);
  break;
 case 133:
 case 132:
  GEM_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   gem_setladrf(sc);
  GEM_UNLOCK(sc);
  break;
 case 131:
 case 128:
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_mii->mii_media, cmd);
  break;
 case 130:
  GEM_LOCK(sc);
  ifp->if_capenable = ifr->ifr_reqcap;
  if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
   ifp->if_hwassist = sc->sc_csum_features;
  else
   ifp->if_hwassist = 0;
  GEM_UNLOCK(sc);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
