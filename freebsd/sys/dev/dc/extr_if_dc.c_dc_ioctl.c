
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct dc_softc* if_softc; } ;
struct dc_softc {int dc_if_flags; int dc_miibus; } ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_IMR ;
 int DC_INTRS ;
 int DC_LOCK (struct dc_softc*) ;
 int DC_UNLOCK (struct dc_softc*) ;
 int IFCAP_POLLING ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int dc_init_locked (struct dc_softc*) ;
 int dc_poll ;
 int dc_setfilt (struct dc_softc*) ;
 int dc_stop (struct dc_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
dc_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct dc_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 struct mii_data *mii;
 int error = 0;

 switch (command) {
 case 129:
  DC_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   int need_setfilt = (ifp->if_flags ^ sc->dc_if_flags) &
    (IFF_PROMISC | IFF_ALLMULTI);

   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    if (need_setfilt)
     dc_setfilt(sc);
   } else {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    dc_init_locked(sc);
   }
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    dc_stop(sc);
  }
  sc->dc_if_flags = ifp->if_flags;
  DC_UNLOCK(sc);
  break;
 case 133:
 case 132:
  DC_LOCK(sc);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   dc_setfilt(sc);
  DC_UNLOCK(sc);
  break;
 case 131:
 case 128:
  mii = device_get_softc(sc->dc_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 case 130:
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
