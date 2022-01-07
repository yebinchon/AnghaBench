
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct axge_softc {int sc_flags; int sc_ue; int sc_mtx; } ;
typedef int device_t ;


 int AXGE_ACCESS_MAC ;
 int AXGE_FLAG_LINK ;
 int AXGE_LOCK (struct axge_softc*) ;
 int AXGE_MSR ;
 int AXGE_PLSR ;
 int AXGE_RX_BULKIN_QCTRL ;
 int AXGE_UNLOCK (struct axge_softc*) ;
 struct mii_data* GET_MII (struct axge_softc*) ;
 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 int MSR_EN_125MHZ ;
 int MSR_FD ;
 int MSR_GM ;
 int MSR_PS ;
 int MSR_RE ;
 int MSR_RFC ;
 int MSR_TFC ;
 int PLSR_USB_HS ;
 int PLSR_USB_SS ;
 int * axge_bulk_size ;
 int axge_read_cmd_1 (struct axge_softc*,int ,int ) ;
 int axge_write_cmd_2 (struct axge_softc*,int ,int,int ,int) ;
 int axge_write_mem (struct axge_softc*,int ,int,int ,int*,int) ;
 struct axge_softc* device_get_softc (int ) ;
 int memcpy (int*,int *,int) ;
 int mtx_owned (int *) ;
 struct ifnet* uether_getifp (int *) ;

__attribute__((used)) static void
axge_miibus_statchg(device_t dev)
{
 struct axge_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint8_t link_status, tmp[5];
 uint16_t val;
 int locked;

 sc = device_get_softc(dev);
 mii = GET_MII(sc);
 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  AXGE_LOCK(sc);

 ifp = uether_getifp(&sc->sc_ue);
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  goto done;

 sc->sc_flags &= ~AXGE_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
  case 130:
   sc->sc_flags |= AXGE_FLAG_LINK;
   break;
  default:
   break;
  }
 }


 if ((sc->sc_flags & AXGE_FLAG_LINK) == 0)
  goto done;

 link_status = axge_read_cmd_1(sc, AXGE_ACCESS_MAC, AXGE_PLSR);

 val = 0;
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  val |= MSR_FD;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
   val |= MSR_TFC;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
   val |= MSR_RFC;
 }
 val |= MSR_RE;
 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 130:
  val |= MSR_GM | MSR_EN_125MHZ;
  if (link_status & PLSR_USB_SS)
   memcpy(tmp, &axge_bulk_size[0], 5);
  else if (link_status & PLSR_USB_HS)
   memcpy(tmp, &axge_bulk_size[1], 5);
  else
   memcpy(tmp, &axge_bulk_size[3], 5);
  break;
 case 129:
  val |= MSR_PS;
  if (link_status & (PLSR_USB_SS | PLSR_USB_HS))
   memcpy(tmp, &axge_bulk_size[2], 5);
  else
   memcpy(tmp, &axge_bulk_size[3], 5);
  break;
 case 128:
  memcpy(tmp, &axge_bulk_size[3], 5);
  break;
 }

 axge_write_mem(sc, AXGE_ACCESS_MAC, 5, AXGE_RX_BULKIN_QCTRL, tmp, 5);
 axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_MSR, val);
done:
 if (!locked)
  AXGE_UNLOCK(sc);
}
