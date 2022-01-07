
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct atse_softc* if_softc; } ;
struct atse_softc {int atse_if_flags; int atse_miibus; } ;
typedef scalar_t__ caddr_t ;


 int ATSE_LOCK (struct atse_softc*) ;
 int ATSE_UNLOCK (struct atse_softc*) ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int atse_init_locked (struct atse_softc*) ;
 int atse_rxfilter_locked (struct atse_softc*) ;
 int atse_stop_locked (struct atse_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
atse_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct atse_softc *sc;
 struct ifreq *ifr;
 int error, mask;

 error = 0;
 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 switch (command) {
 case 129:
  ATSE_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->atse_if_flags) &
       (IFF_PROMISC | IFF_ALLMULTI)) != 0)
    atse_rxfilter_locked(sc);
   else
    atse_init_locked(sc);
  } else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   atse_stop_locked(sc);
  sc->atse_if_flags = ifp->if_flags;
  ATSE_UNLOCK(sc);
  break;
 case 130:
  ATSE_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  ATSE_UNLOCK(sc);
  break;
 case 133:
 case 132:
  ATSE_LOCK(sc);
  atse_rxfilter_locked(sc);
  ATSE_UNLOCK(sc);
  break;
 case 131:
 case 128:
 {
  struct mii_data *mii;
  struct ifreq *ifr;

  mii = device_get_softc(sc->atse_miibus);
  ifr = (struct ifreq *)data;
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 }
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
