
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ste_softc {int ste_if_flags; int ste_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; struct ste_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_2 (struct ste_softc*,int ,int ) ;
 int IFCAP_POLLING ;
 int IFCAP_WOL_MAGIC ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int STE_IMR ;
 int STE_INTRS ;
 int STE_LOCK (struct ste_softc*) ;
 int STE_UNLOCK (struct ste_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int ste_init_locked (struct ste_softc*) ;
 int ste_poll ;
 int ste_rxfilter (struct ste_softc*) ;
 int ste_stop (struct ste_softc*) ;

__attribute__((used)) static int
ste_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct ste_softc *sc;
 struct ifreq *ifr;
 struct mii_data *mii;
 int error = 0, mask;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 switch (command) {
 case 129:
  STE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->ste_if_flags) &
        (IFF_PROMISC | IFF_ALLMULTI)) != 0)
    ste_rxfilter(sc);
   else
    ste_init_locked(sc);
  } else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   ste_stop(sc);
  sc->ste_if_flags = ifp->if_flags;
  STE_UNLOCK(sc);
  break;
 case 133:
 case 132:
  STE_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   ste_rxfilter(sc);
  STE_UNLOCK(sc);
  break;
 case 131:
 case 128:
  mii = device_get_softc(sc->ste_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 case 130:
  STE_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_WOL_MAGIC) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL_MAGIC) != 0)
   ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  STE_UNLOCK(sc);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
