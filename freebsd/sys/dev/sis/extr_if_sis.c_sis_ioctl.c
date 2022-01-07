
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sis_softc {int sis_if_flags; int sis_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; struct sis_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_4 (struct sis_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int SIS_IER ;
 int SIS_LOCK (struct sis_softc*) ;
 int SIS_UNLOCK (struct sis_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int sis_initl (struct sis_softc*) ;
 int sis_poll ;
 int sis_rxfilter (struct sis_softc*) ;
 int sis_stop (struct sis_softc*) ;

__attribute__((used)) static int
sis_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct sis_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii;
 int error = 0, mask;

 switch (command) {
 case 129:
  SIS_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->sis_if_flags) &
       (IFF_PROMISC | IFF_ALLMULTI)) != 0)
    sis_rxfilter(sc);
   else
    sis_initl(sc);
  } else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   sis_stop(sc);
  sc->sis_if_flags = ifp->if_flags;
  SIS_UNLOCK(sc);
  break;
 case 133:
 case 132:
  SIS_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   sis_rxfilter(sc);
  SIS_UNLOCK(sc);
  break;
 case 131:
 case 128:
  mii = device_get_softc(sc->sis_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 case 130:
  SIS_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_WOL) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL) != 0) {
   if ((mask & IFCAP_WOL_UCAST) != 0)
    ifp->if_capenable ^= IFCAP_WOL_UCAST;
   if ((mask & IFCAP_WOL_MCAST) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MCAST;
   if ((mask & IFCAP_WOL_MAGIC) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  }
  SIS_UNLOCK(sc);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
