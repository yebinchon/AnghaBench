
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sge_softc {int sge_if_flags; int sge_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int if_hwassist; struct sge_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSUM_TSO ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int SGE_CSUM_FEATURES ;
 int SGE_LOCK (struct sge_softc*) ;
 int SGE_UNLOCK (struct sge_softc*) ;






 int VLAN_CAPABILITIES (struct ifnet*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int sge_init_locked (struct sge_softc*) ;
 int sge_rxfilter (struct sge_softc*) ;
 int sge_stop (struct sge_softc*) ;

__attribute__((used)) static int
sge_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct sge_softc *sc;
 struct ifreq *ifr;
 struct mii_data *mii;
 int error = 0, mask, reinit;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 switch(command) {
 case 129:
  SGE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->sge_if_flags) &
       (IFF_PROMISC | IFF_ALLMULTI)) != 0)
    sge_rxfilter(sc);
   else
    sge_init_locked(sc);
  } else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   sge_stop(sc);
  sc->sge_if_flags = ifp->if_flags;
  SGE_UNLOCK(sc);
  break;
 case 130:
  SGE_LOCK(sc);
  reinit = 0;
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
    ifp->if_hwassist |= SGE_CSUM_FEATURES;
   else
    ifp->if_hwassist &= ~SGE_CSUM_FEATURES;
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_RXCSUM) != 0)
   ifp->if_capenable ^= IFCAP_RXCSUM;
  if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
  if ((mask & IFCAP_TSO4) != 0 &&
      (ifp->if_capabilities & IFCAP_TSO4) != 0) {
   ifp->if_capenable ^= IFCAP_TSO4;
   if ((ifp->if_capenable & IFCAP_TSO4) != 0)
    ifp->if_hwassist |= CSUM_TSO;
   else
    ifp->if_hwassist &= ~CSUM_TSO;
  }
  if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {




   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
   if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) == 0)
    ifp->if_capenable &=
        ~(IFCAP_VLAN_HWTSO | IFCAP_VLAN_HWCSUM);
   reinit = 1;
  }
  if (reinit > 0 && (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   sge_init_locked(sc);
  }
  SGE_UNLOCK(sc);
  VLAN_CAPABILITIES(ifp);
  break;
 case 133:
 case 132:
  SGE_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   sge_rxfilter(sc);
  SGE_UNLOCK(sc);
  break;
 case 131:
 case 128:
  mii = device_get_softc(sc->sge_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
