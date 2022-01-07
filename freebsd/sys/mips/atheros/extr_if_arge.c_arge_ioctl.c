
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct arge_softc* if_softc; } ;
struct arge_softc {int arge_if_flags; int arge_ifmedia; int arge_miibus; int arge_detach; } ;
typedef scalar_t__ caddr_t ;


 int AR71XX_DMA_INTR ;
 int ARGE_LOCK (struct arge_softc*) ;
 int ARGE_UNLOCK (struct arge_softc*) ;
 int ARGE_WRITE (struct arge_softc*,int ,int ) ;
 int DMA_INTR_ALL ;
 int IFCAP_POLLING ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int arge_init_locked (struct arge_softc*) ;
 int arge_poll ;
 int arge_stop (struct arge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
arge_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct arge_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii;
 int error;




 switch (command) {
 case 129:
  ARGE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if (((ifp->if_flags ^ sc->arge_if_flags)
        & (IFF_PROMISC | IFF_ALLMULTI)) != 0) {

    }

   } else {
    if (!sc->arge_detach)
     arge_init_locked(sc);
   }
  } else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   arge_stop(sc);
  }
  sc->arge_if_flags = ifp->if_flags;
  ARGE_UNLOCK(sc);
  error = 0;
  break;
 case 133:
 case 132:

  error = 0;
  break;
 case 131:
 case 128:
  if (sc->arge_miibus) {
   mii = device_get_softc(sc->arge_miibus);
   error = ifmedia_ioctl(ifp, ifr, &mii->mii_media,
       command);
  }
  else
   error = ifmedia_ioctl(ifp, ifr, &sc->arge_ifmedia,
       command);
  break;
 case 130:
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
