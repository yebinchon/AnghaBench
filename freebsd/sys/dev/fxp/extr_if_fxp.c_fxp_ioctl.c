
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct fxp_softc {int if_flags; int flags; int revision; int sc_media; int * miibus; } ;
typedef int if_t ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_1 (struct fxp_softc*,int ,int ) ;
 int CSUM_TSO ;
 int FXP_CSR_SCB_INTRCNTL ;
 int FXP_CSUM_FEATURES ;
 int FXP_FLAG_82559_RXCSUM ;
 int FXP_FLAG_LONG_PKT_EN ;
 int FXP_FLAG_SAVE_BAD ;
 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_REV_82557 ;
 int FXP_SCB_INTR_DISABLE ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL_MAGIC ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_LINK0 ;
 int IFF_PROMISC ;
 int IFF_UP ;






 struct mii_data* device_get_softc (int *) ;
 int ether_ioctl (int ,int,scalar_t__) ;
 int ether_poll_deregister (int ) ;
 int ether_poll_register (int ,int ) ;
 int fxp_init_body (struct fxp_softc*,int) ;
 int fxp_poll ;
 int fxp_stop (struct fxp_softc*) ;
 int if_getcapabilities (int ) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_getflags (int ) ;
 struct fxp_softc* if_getsoftc (int ) ;
 int if_setcapenablebit (int ,int,int) ;
 int if_setdrvflagbits (int ,int ,int) ;
 int if_sethwassistbits (int ,int ,int ) ;
 int if_togglecapenable (int ,int) ;
 int if_vlancap (int ) ;
 int ifmedia_ioctl (int ,struct ifreq*,int *,int) ;

__attribute__((used)) static int
fxp_ioctl(if_t ifp, u_long command, caddr_t data)
{
 struct fxp_softc *sc = if_getsoftc(ifp);
 struct ifreq *ifr = (struct ifreq *)data;
 struct mii_data *mii;
 int flag, mask, error = 0, reinit;

 switch (command) {
 case 129:
  FXP_LOCK(sc);






  if (if_getflags(ifp) & IFF_UP) {
   if (((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) &&
       ((if_getflags(ifp) ^ sc->if_flags) &
       (IFF_PROMISC | IFF_ALLMULTI | IFF_LINK0)) != 0) {
    if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
    fxp_init_body(sc, 0);
   } else if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0)
    fxp_init_body(sc, 1);
  } else {
   if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0)
    fxp_stop(sc);
  }
  sc->if_flags = if_getflags(ifp);
  FXP_UNLOCK(sc);
  break;

 case 133:
 case 132:
  FXP_LOCK(sc);
  if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
   if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
   fxp_init_body(sc, 0);
  }
  FXP_UNLOCK(sc);
  break;

 case 128:
 case 131:
  if (sc->miibus != ((void*)0)) {
   mii = device_get_softc(sc->miibus);
                        error = ifmedia_ioctl(ifp, ifr,
                            &mii->mii_media, command);
  } else {
                        error = ifmedia_ioctl(ifp, ifr, &sc->sc_media, command);
  }
  break;

 case 130:
  reinit = 0;
  mask = if_getcapenable(ifp) ^ ifr->ifr_reqcap;
  FXP_LOCK(sc);
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_TXCSUM) != 0) {
   if_togglecapenable(ifp, IFCAP_TXCSUM);
   if ((if_getcapenable(ifp) & IFCAP_TXCSUM) != 0)
    if_sethwassistbits(ifp, FXP_CSUM_FEATURES, 0);
   else
    if_sethwassistbits(ifp, 0, FXP_CSUM_FEATURES);
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_RXCSUM) != 0) {
   if_togglecapenable(ifp, IFCAP_RXCSUM);
   if ((sc->flags & FXP_FLAG_82559_RXCSUM) != 0)
    reinit++;
  }
  if ((mask & IFCAP_TSO4) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_TSO4) != 0) {
   if_togglecapenable(ifp, IFCAP_TSO4);
   if ((if_getcapenable(ifp) & IFCAP_TSO4) != 0)
    if_sethwassistbits(ifp, CSUM_TSO, 0);
   else
    if_sethwassistbits(ifp, 0, CSUM_TSO);
  }
  if ((mask & IFCAP_WOL_MAGIC) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_WOL_MAGIC) != 0)
   if_togglecapenable(ifp, IFCAP_WOL_MAGIC);
  if ((mask & IFCAP_VLAN_MTU) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_VLAN_MTU) != 0) {
   if_togglecapenable(ifp, IFCAP_VLAN_MTU);
   if (sc->revision != FXP_REV_82557)
    flag = FXP_FLAG_LONG_PKT_EN;
   else
    flag = FXP_FLAG_SAVE_BAD;
   sc->flags ^= flag;
   if (if_getflags(ifp) & IFF_UP)
    reinit++;
  }
  if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_VLAN_HWCSUM) != 0)
   if_togglecapenable(ifp, IFCAP_VLAN_HWCSUM);
  if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_VLAN_HWTSO) != 0)
   if_togglecapenable(ifp, IFCAP_VLAN_HWTSO);
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (if_getcapabilities(ifp) & IFCAP_VLAN_HWTAGGING) != 0) {
   if_togglecapenable(ifp, IFCAP_VLAN_HWTAGGING);
   if ((if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) == 0)
    if_setcapenablebit(ifp, 0, IFCAP_VLAN_HWTSO |
        IFCAP_VLAN_HWCSUM);
   reinit++;
  }
  if (reinit > 0 &&
      (if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
   if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
   fxp_init_body(sc, 0);
  }
  FXP_UNLOCK(sc);
  if_vlancap(ifp);
  break;

 default:
  error = ether_ioctl(ifp, command, data);
 }
 return (error);
}
