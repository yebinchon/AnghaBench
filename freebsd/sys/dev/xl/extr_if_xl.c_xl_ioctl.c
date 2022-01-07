
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct xl_softc {int xl_if_flags; int xl_flags; int xl_fhandle; int xl_ftag; int ifmedia; int * xl_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int if_hwassist; struct xl_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_2 (struct xl_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int IFCAP_WOL_MAGIC ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int XL905B_CSUM_FEATURES ;
 int XL_CMD_INTR_ACK ;
 int XL_CMD_INTR_ENB ;
 int XL_COMMAND ;
 int XL_FLAG_FUNCREG ;
 int XL_INTRS ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_UNLOCK (struct xl_softc*) ;
 int bus_space_write_4 (int ,int ,int,int) ;
 struct mii_data* device_get_softc (int *) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int xl_init_locked (struct xl_softc*) ;
 int xl_poll ;
 int xl_rxfilter (struct xl_softc*) ;
 int xl_stop (struct xl_softc*) ;

__attribute__((used)) static int
xl_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct xl_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 int error = 0, mask;
 struct mii_data *mii = ((void*)0);

 switch (command) {
 case 129:
  XL_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING &&
       (ifp->if_flags ^ sc->xl_if_flags) &
       (IFF_PROMISC | IFF_ALLMULTI))
    xl_rxfilter(sc);
   else
    xl_init_locked(sc);
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    xl_stop(sc);
  }
  sc->xl_if_flags = ifp->if_flags;
  XL_UNLOCK(sc);
  break;
 case 133:
 case 132:

  XL_LOCK(sc);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   xl_rxfilter(sc);
  XL_UNLOCK(sc);
  break;
 case 131:
 case 128:
  if (sc->xl_miibus != ((void*)0))
   mii = device_get_softc(sc->xl_miibus);
  if (mii == ((void*)0))
   error = ifmedia_ioctl(ifp, ifr,
       &sc->ifmedia, command);
  else
   error = ifmedia_ioctl(ifp, ifr,
       &mii->mii_media, command);
  break;
 case 130:
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  XL_LOCK(sc);
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
    ifp->if_hwassist |= XL905B_CSUM_FEATURES;
   else
    ifp->if_hwassist &= ~XL905B_CSUM_FEATURES;
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_RXCSUM) != 0)
   ifp->if_capenable ^= IFCAP_RXCSUM;
  if ((mask & IFCAP_WOL_MAGIC) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL_MAGIC) != 0)
   ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  XL_UNLOCK(sc);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
