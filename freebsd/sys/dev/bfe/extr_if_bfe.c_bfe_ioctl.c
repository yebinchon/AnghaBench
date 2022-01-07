
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct bfe_softc* if_softc; } ;
struct bfe_softc {int bfe_flags; int bfe_miibus; } ;
typedef scalar_t__ caddr_t ;


 int BFE_FLAG_DETACH ;
 int BFE_LOCK (struct bfe_softc*) ;
 int BFE_UNLOCK (struct bfe_softc*) ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;





 int bfe_init_locked (struct bfe_softc*) ;
 int bfe_set_rx_mode (struct bfe_softc*) ;
 int bfe_stop (struct bfe_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
bfe_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct bfe_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii;
 int error = 0;

 switch (command) {
 case 129:
  BFE_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    bfe_set_rx_mode(sc);
   else if ((sc->bfe_flags & BFE_FLAG_DETACH) == 0)
    bfe_init_locked(sc);
  } else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   bfe_stop(sc);
  BFE_UNLOCK(sc);
  break;
 case 132:
 case 131:
  BFE_LOCK(sc);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   bfe_set_rx_mode(sc);
  BFE_UNLOCK(sc);
  break;
 case 130:
 case 128:
  mii = device_get_softc(sc->bfe_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
