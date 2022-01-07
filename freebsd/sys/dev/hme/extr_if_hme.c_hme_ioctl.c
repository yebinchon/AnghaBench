
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; struct hme_softc* if_softc; } ;
struct hme_softc {int sc_ifflags; int sc_csum_features; TYPE_1__* sc_mii; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int mii_media; } ;


 int CSUM_UDP ;
 int HME_LOCK (struct hme_softc*) ;
 int HME_UNLOCK (struct hme_softc*) ;
 int IFCAP_TXCSUM ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_LINK0 ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int hme_init_locked (struct hme_softc*) ;
 int hme_setladrf (struct hme_softc*,int) ;
 int hme_stop (struct hme_softc*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
hme_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct hme_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int error = 0;

 switch (cmd) {
 case 129:
  HME_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->sc_ifflags) &
       (IFF_ALLMULTI | IFF_PROMISC)) != 0)
    hme_setladrf(sc, 1);
   else
    hme_init_locked(sc);
  } else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   hme_stop(sc);
  if ((ifp->if_flags & IFF_LINK0) != 0)
   sc->sc_csum_features |= CSUM_UDP;
  else
   sc->sc_csum_features &= ~CSUM_UDP;
  if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
   ifp->if_hwassist = sc->sc_csum_features;
  sc->sc_ifflags = ifp->if_flags;
  HME_UNLOCK(sc);
  break;

 case 133:
 case 132:
  HME_LOCK(sc);
  hme_setladrf(sc, 1);
  HME_UNLOCK(sc);
  error = 0;
  break;
 case 131:
 case 128:
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_mii->mii_media, cmd);
  break;
 case 130:
  HME_LOCK(sc);
  ifp->if_capenable = ifr->ifr_reqcap;
  if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
   ifp->if_hwassist = sc->sc_csum_features;
  else
   ifp->if_hwassist = 0;
  HME_UNLOCK(sc);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
