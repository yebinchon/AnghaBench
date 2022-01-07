
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
struct mii_data {int mii_media; } ;
struct jme_softc {int jme_flags; int jme_if_flags; int jme_miibus; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_capenable; int if_hwassist; int if_drv_flags; int if_flags; int if_capabilities; int if_mtu; struct jme_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int ) ;
 int CSUM_TSO ;
 int EINVAL ;
 int ETHERMIN ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_WOL_MAGIC ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int JME_CSUM_FEATURES ;
 int JME_FLAG_DETACH ;
 int JME_FLAG_NOJUMBO ;
 int JME_JUMBO_MTU ;
 int JME_LOCK (struct jme_softc*) ;
 int JME_MAX_MTU ;
 int JME_RXMAC ;
 int JME_TX_FIFO_SIZE ;
 int JME_UNLOCK (struct jme_softc*) ;
 int RXMAC_CSUM_ENB ;







 int VLAN_CAPABILITIES (struct ifnet*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int jme_init_locked (struct jme_softc*) ;
 int jme_set_filter (struct jme_softc*) ;
 int jme_set_vlan (struct jme_softc*) ;
 int jme_stop (struct jme_softc*) ;

__attribute__((used)) static int
jme_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct jme_softc *sc;
 struct ifreq *ifr;
 struct mii_data *mii;
 uint32_t reg;
 int error, mask;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;
 error = 0;
 switch (cmd) {
 case 128:
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > JME_JUMBO_MTU ||
      ((sc->jme_flags & JME_FLAG_NOJUMBO) != 0 &&
      ifr->ifr_mtu > JME_MAX_MTU)) {
   error = EINVAL;
   break;
  }

  if (ifp->if_mtu != ifr->ifr_mtu) {






   JME_LOCK(sc);
   if (ifr->ifr_mtu >= JME_TX_FIFO_SIZE) {
    ifp->if_capenable &=
        ~(IFCAP_TXCSUM | IFCAP_TSO4);
    ifp->if_hwassist &=
        ~(JME_CSUM_FEATURES | CSUM_TSO);
    VLAN_CAPABILITIES(ifp);
   }
   ifp->if_mtu = ifr->ifr_mtu;
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    jme_init_locked(sc);
   }
   JME_UNLOCK(sc);
  }
  break;
 case 130:
  JME_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if (((ifp->if_flags ^ sc->jme_if_flags)
        & (IFF_PROMISC | IFF_ALLMULTI)) != 0)
     jme_set_filter(sc);
   } else {
    if ((sc->jme_flags & JME_FLAG_DETACH) == 0)
     jme_init_locked(sc);
   }
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
    jme_stop(sc);
  }
  sc->jme_if_flags = ifp->if_flags;
  JME_UNLOCK(sc);
  break;
 case 134:
 case 133:
  JME_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   jme_set_filter(sc);
  JME_UNLOCK(sc);
  break;
 case 129:
 case 132:
  mii = device_get_softc(sc->jme_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;
 case 131:
  JME_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_TXCSUM) != 0 &&
      ifp->if_mtu < JME_TX_FIFO_SIZE) {
   if ((IFCAP_TXCSUM & ifp->if_capabilities) != 0) {
    ifp->if_capenable ^= IFCAP_TXCSUM;
    if ((IFCAP_TXCSUM & ifp->if_capenable) != 0)
     ifp->if_hwassist |= JME_CSUM_FEATURES;
    else
     ifp->if_hwassist &= ~JME_CSUM_FEATURES;
   }
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (IFCAP_RXCSUM & ifp->if_capabilities) != 0) {
   ifp->if_capenable ^= IFCAP_RXCSUM;
   reg = CSR_READ_4(sc, JME_RXMAC);
   reg &= ~RXMAC_CSUM_ENB;
   if ((ifp->if_capenable & IFCAP_RXCSUM) != 0)
    reg |= RXMAC_CSUM_ENB;
   CSR_WRITE_4(sc, JME_RXMAC, reg);
  }
  if ((mask & IFCAP_TSO4) != 0 &&
      ifp->if_mtu < JME_TX_FIFO_SIZE) {
   if ((IFCAP_TSO4 & ifp->if_capabilities) != 0) {
    ifp->if_capenable ^= IFCAP_TSO4;
    if ((IFCAP_TSO4 & ifp->if_capenable) != 0)
     ifp->if_hwassist |= CSUM_TSO;
    else
     ifp->if_hwassist &= ~CSUM_TSO;
   }
  }
  if ((mask & IFCAP_WOL_MAGIC) != 0 &&
      (IFCAP_WOL_MAGIC & ifp->if_capabilities) != 0)
   ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
  if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (IFCAP_VLAN_HWTAGGING & ifp->if_capabilities) != 0) {
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
   jme_set_vlan(sc);
  }
  JME_UNLOCK(sc);
  VLAN_CAPABILITIES(ifp);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
