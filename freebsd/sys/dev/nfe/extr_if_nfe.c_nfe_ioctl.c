
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct nfe_softc {int nfe_flags; int nfe_if_flags; int nfe_miibus; int nfe_jumbo_disable; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
typedef int if_t ;
typedef scalar_t__ caddr_t ;


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
 int IFCAP_WOL_MAGIC ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int NFE_CSUM_FEATURES ;
 int NFE_JUMBO_MTU ;
 int NFE_JUMBO_SUP ;
 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_UNLOCK (struct nfe_softc*) ;







 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (int ,int,scalar_t__) ;
 int ether_poll_deregister (int ) ;
 int ether_poll_register (int ,int ) ;
 int if_getcapabilities (int ) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_getflags (int ) ;
 int if_getmtu (int ) ;
 struct nfe_softc* if_getsoftc (int ) ;
 int if_setcapenablebit (int ,int,int) ;
 int if_setdrvflagbits (int ,int ,int) ;
 int if_sethwassistbits (int ,int ,int ) ;
 int if_setmtu (int ,int ) ;
 int if_togglecapenable (int ,int) ;
 int if_vlancap (int ) ;
 int ifmedia_ioctl (int ,struct ifreq*,int *,int) ;
 int nfe_disable_intr (struct nfe_softc*) ;
 int nfe_enable_intr (struct nfe_softc*) ;
 int nfe_init (struct nfe_softc*) ;
 int nfe_init_locked (struct nfe_softc*) ;
 int nfe_poll ;
 int nfe_setmulti (struct nfe_softc*) ;
 int nfe_stop (int ) ;

__attribute__((used)) static int
nfe_ioctl(if_t ifp, u_long cmd, caddr_t data)
{
 struct nfe_softc *sc;
 struct ifreq *ifr;
 struct mii_data *mii;
 int error, init, mask;

 sc = if_getsoftc(ifp);
 ifr = (struct ifreq *) data;
 error = 0;
 init = 0;
 switch (cmd) {
 case 128:
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > NFE_JUMBO_MTU)
   error = EINVAL;
  else if (if_getmtu(ifp) != ifr->ifr_mtu) {
   if ((((sc->nfe_flags & NFE_JUMBO_SUP) == 0) ||
       (sc->nfe_jumbo_disable != 0)) &&
       ifr->ifr_mtu > ETHERMTU)
    error = EINVAL;
   else {
    NFE_LOCK(sc);
    if_setmtu(ifp, ifr->ifr_mtu);
    if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {
     if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
     nfe_init_locked(sc);
    }
    NFE_UNLOCK(sc);
   }
  }
  break;
 case 130:
  NFE_LOCK(sc);
  if (if_getflags(ifp) & IFF_UP) {





   if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) &&
       ((if_getflags(ifp) ^ sc->nfe_if_flags) &
        (IFF_ALLMULTI | IFF_PROMISC)) != 0)
    nfe_setmulti(sc);
   else
    nfe_init_locked(sc);
  } else {
   if (if_getdrvflags(ifp) & IFF_DRV_RUNNING)
    nfe_stop(ifp);
  }
  sc->nfe_if_flags = if_getflags(ifp);
  NFE_UNLOCK(sc);
  error = 0;
  break;
 case 134:
 case 133:
  if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
   NFE_LOCK(sc);
   nfe_setmulti(sc);
   NFE_UNLOCK(sc);
   error = 0;
  }
  break;
 case 129:
 case 132:
  mii = device_get_softc(sc->nfe_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;
 case 131:
  mask = ifr->ifr_reqcap ^ if_getcapenable(ifp);
  if ((mask & IFCAP_WOL_MAGIC) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_WOL_MAGIC) != 0)
   if_togglecapenable(ifp, IFCAP_WOL_MAGIC);
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_TXCSUM) != 0) {
   if_togglecapenable(ifp, IFCAP_TXCSUM);
   if ((if_getcapenable(ifp) & IFCAP_TXCSUM) != 0)
    if_sethwassistbits(ifp, NFE_CSUM_FEATURES, 0);
   else
    if_sethwassistbits(ifp, 0, NFE_CSUM_FEATURES);
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_RXCSUM) != 0) {
   if_togglecapenable(ifp, IFCAP_RXCSUM);
   init++;
  }
  if ((mask & IFCAP_TSO4) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_TSO4) != 0) {
   if_togglecapenable(ifp, IFCAP_TSO4);
   if ((IFCAP_TSO4 & if_getcapenable(ifp)) != 0)
    if_sethwassistbits(ifp, CSUM_TSO, 0);
   else
    if_sethwassistbits(ifp, 0, CSUM_TSO);
  }
  if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_VLAN_HWTSO) != 0)
   if_togglecapenable(ifp, IFCAP_VLAN_HWTSO);
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_VLAN_HWTAGGING) != 0) {
   if_togglecapenable(ifp, IFCAP_VLAN_HWTAGGING);
   if ((if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) == 0)
    if_setcapenablebit(ifp, 0, IFCAP_VLAN_HWTSO);
   init++;
  }







  if ((if_getcapenable(ifp) & IFCAP_RXCSUM) == 0) {
   if ((if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) != 0)
    init++;
   if_setcapenablebit(ifp, 0,
       (IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWTSO));
  }
  if (init > 0 && (if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
   if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
   nfe_init(sc);
  }
  if_vlancap(ifp);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
