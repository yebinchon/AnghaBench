
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct dme_softc* if_softc; } ;
struct dme_softc {int dme_miibus; } ;
typedef scalar_t__ caddr_t ;


 int DME_LOCK (struct dme_softc*) ;
 int DME_UNLOCK (struct dme_softc*) ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;



 struct mii_data* device_get_softc (int ) ;
 int dme_init_locked (struct dme_softc*) ;
 int dme_setmode (struct dme_softc*) ;
 int dme_stop (struct dme_softc*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
dme_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct dme_softc *sc;
 struct mii_data *mii;
 struct ifreq *ifr;
 int error = 0;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 switch (command) {
 case 129:




  DME_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
    dme_init_locked(sc);
   }
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    dme_stop(sc);
   }
  }
  dme_setmode(sc);
  DME_UNLOCK(sc);
  break;
 case 130:
 case 128:
  mii = device_get_softc(sc->dme_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }
 return (error);
}
