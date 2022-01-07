
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct bge_softc {int bge_flags; int bge_if_flags; int bge_csum_features; int bge_miibus; int bge_ifmedia; } ;
typedef int if_t ;
typedef scalar_t__ caddr_t ;


 int BGE_CLRBIT (struct bge_softc*,int ,int ) ;
 int BGE_FLAG_JUMBO_STD ;
 int BGE_FLAG_TBI ;
 int BGE_IS_JUMBO_CAPABLE (struct bge_softc*) ;
 int BGE_JUMBO_MTU ;
 int BGE_LOCK (struct bge_softc*) ;
 int BGE_MBX_IRQ0_LO ;
 int BGE_PCIMISCCTL_MASK_PCI_INTR ;
 int BGE_PCI_MISC_CTL ;
 int BGE_SETBIT (struct bge_softc*,int ,int ) ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int CSUM_TSO ;
 int EINVAL ;
 int ETHERMIN ;
 int ETHERMTU ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;







 int bge_init (struct bge_softc*) ;
 int bge_init_locked (struct bge_softc*) ;
 int bge_poll ;
 int bge_setmulti (struct bge_softc*) ;
 int bge_setpromisc (struct bge_softc*) ;
 int bge_setvlan (struct bge_softc*) ;
 int bge_stop (struct bge_softc*) ;
 int bge_writembx (struct bge_softc*,int ,int) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (int ,int,scalar_t__) ;
 int ether_poll_deregister (int ) ;
 int ether_poll_register (int ,int ) ;
 int if_getcapabilities (int ) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_getflags (int ) ;
 int if_getmtu (int ) ;
 struct bge_softc* if_getsoftc (int ) ;
 int if_setcapenablebit (int ,int,int) ;
 int if_setdrvflagbits (int ,int ,int) ;
 int if_sethwassistbits (int ,int ,int ) ;
 int if_setmtu (int ,int ) ;
 int if_togglecapenable (int ,int) ;
 int if_vlancap (int ) ;
 int ifmedia_ioctl (int ,struct ifreq*,int *,int) ;

__attribute__((used)) static int
bge_ioctl(if_t ifp, u_long command, caddr_t data)
{
 struct bge_softc *sc = if_getsoftc(ifp);
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii;
 int flags, mask, error = 0;

 switch (command) {
 case 128:
  if (BGE_IS_JUMBO_CAPABLE(sc) ||
      (sc->bge_flags & BGE_FLAG_JUMBO_STD)) {
   if (ifr->ifr_mtu < ETHERMIN ||
       ifr->ifr_mtu > BGE_JUMBO_MTU) {
    error = EINVAL;
    break;
   }
  } else if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > ETHERMTU) {
   error = EINVAL;
   break;
  }
  BGE_LOCK(sc);
  if (if_getmtu(ifp) != ifr->ifr_mtu) {
   if_setmtu(ifp, ifr->ifr_mtu);
   if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
    if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
    bge_init_locked(sc);
   }
  }
  BGE_UNLOCK(sc);
  break;
 case 130:
  BGE_LOCK(sc);
  if (if_getflags(ifp) & IFF_UP) {
   if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
    flags = if_getflags(ifp) ^ sc->bge_if_flags;
    if (flags & IFF_PROMISC)
     bge_setpromisc(sc);
    if (flags & IFF_ALLMULTI)
     bge_setmulti(sc);
   } else
    bge_init_locked(sc);
  } else {
   if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
    bge_stop(sc);
   }
  }
  sc->bge_if_flags = if_getflags(ifp);
  BGE_UNLOCK(sc);
  error = 0;
  break;
 case 134:
 case 133:
  if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
   BGE_LOCK(sc);
   bge_setmulti(sc);
   BGE_UNLOCK(sc);
   error = 0;
  }
  break;
 case 129:
 case 132:
  if (sc->bge_flags & BGE_FLAG_TBI) {
   error = ifmedia_ioctl(ifp, ifr,
       &sc->bge_ifmedia, command);
  } else {
   mii = device_get_softc(sc->bge_miibus);
   error = ifmedia_ioctl(ifp, ifr,
       &mii->mii_media, command);
  }
  break;
 case 131:
  mask = ifr->ifr_reqcap ^ if_getcapenable(ifp);
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_TXCSUM) != 0) {
   if_togglecapenable(ifp, IFCAP_TXCSUM);
   if ((if_getcapenable(ifp) & IFCAP_TXCSUM) != 0)
    if_sethwassistbits(ifp,
        sc->bge_csum_features, 0);
   else
    if_sethwassistbits(ifp, 0,
        sc->bge_csum_features);
  }

  if ((mask & IFCAP_RXCSUM) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_RXCSUM) != 0)
   if_togglecapenable(ifp, IFCAP_RXCSUM);

  if ((mask & IFCAP_TSO4) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_TSO4) != 0) {
   if_togglecapenable(ifp, IFCAP_TSO4);
   if ((if_getcapenable(ifp) & IFCAP_TSO4) != 0)
    if_sethwassistbits(ifp, CSUM_TSO, 0);
   else
    if_sethwassistbits(ifp, 0, CSUM_TSO);
  }

  if (mask & IFCAP_VLAN_MTU) {
   if_togglecapenable(ifp, IFCAP_VLAN_MTU);
   if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
   bge_init(sc);
  }

  if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_VLAN_HWTSO) != 0)
   if_togglecapenable(ifp, IFCAP_VLAN_HWTSO);
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_VLAN_HWTAGGING) != 0) {
   if_togglecapenable(ifp, IFCAP_VLAN_HWTAGGING);
   if ((if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) == 0)
    if_setcapenablebit(ifp, 0, IFCAP_VLAN_HWTSO);
   BGE_LOCK(sc);
   bge_setvlan(sc);
   BGE_UNLOCK(sc);
  }



  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
