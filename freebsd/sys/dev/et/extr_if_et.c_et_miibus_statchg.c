
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct et_softc {int sc_flags; struct ifnet* ifp; int sc_miibus; } ;
typedef int device_t ;


 int CSR_READ_4 (struct et_softc*,int ) ;
 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int DELAY (int) ;
 int ET_FLAG_FASTETHER ;
 int ET_FLAG_LINK ;
 int ET_FLAG_TXRX_ENABLED ;
 int ET_MAC_CFG1 ;
 int ET_MAC_CFG1_LOOPBACK ;
 int ET_MAC_CFG1_RXEN ;
 int ET_MAC_CFG1_RXFLOW ;
 int ET_MAC_CFG1_SYNC_RXEN ;
 int ET_MAC_CFG1_SYNC_TXEN ;
 int ET_MAC_CFG1_TXEN ;
 int ET_MAC_CFG1_TXFLOW ;
 int ET_MAC_CFG2 ;
 int ET_MAC_CFG2_BIGFRM ;
 int ET_MAC_CFG2_CRC ;
 int ET_MAC_CFG2_FDX ;
 int ET_MAC_CFG2_LENCHK ;
 int ET_MAC_CFG2_MODE_GMII ;
 int ET_MAC_CFG2_MODE_MII ;
 int ET_MAC_CFG2_PADCRC ;
 int ET_MAC_CFG2_PREAMBLE_LEN_MASK ;
 int ET_MAC_CFG2_PREAMBLE_LEN_SHIFT ;
 int ET_MAC_CTRL ;
 int ET_MAC_CTRL_GHDX ;
 int ET_MAC_CTRL_MODE_MII ;
 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int const IFM_SUBTYPE (int ) ;
 int NRETRY ;
 void* device_get_softc (int ) ;
 int if_printf (struct ifnet*,char*) ;

__attribute__((used)) static void
et_miibus_statchg(device_t dev)
{
 struct et_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t cfg1, cfg2, ctrl;
 int i;

 sc = device_get_softc(dev);

 mii = device_get_softc(sc->sc_miibus);
 ifp = sc->ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc->sc_flags &= ~ET_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->sc_flags |= ET_FLAG_LINK;
   break;
  case 130:
   if ((sc->sc_flags & ET_FLAG_FASTETHER) == 0)
    sc->sc_flags |= ET_FLAG_LINK;
   break;
  }
 }


 if ((sc->sc_flags & ET_FLAG_LINK) == 0)
  return;


 ctrl = CSR_READ_4(sc, ET_MAC_CTRL);
 ctrl &= ~(ET_MAC_CTRL_GHDX | ET_MAC_CTRL_MODE_MII);
 cfg1 = CSR_READ_4(sc, ET_MAC_CFG1);
 cfg1 &= ~(ET_MAC_CFG1_TXFLOW | ET_MAC_CFG1_RXFLOW |
     ET_MAC_CFG1_LOOPBACK);
 cfg2 = CSR_READ_4(sc, ET_MAC_CFG2);
 cfg2 &= ~(ET_MAC_CFG2_MODE_MII | ET_MAC_CFG2_MODE_GMII |
     ET_MAC_CFG2_FDX | ET_MAC_CFG2_BIGFRM);
 cfg2 |= ET_MAC_CFG2_LENCHK | ET_MAC_CFG2_CRC | ET_MAC_CFG2_PADCRC |
     ((7 << ET_MAC_CFG2_PREAMBLE_LEN_SHIFT) &
     ET_MAC_CFG2_PREAMBLE_LEN_MASK);

 if (IFM_SUBTYPE(mii->mii_media_active) == 130)
  cfg2 |= ET_MAC_CFG2_MODE_GMII;
 else {
  cfg2 |= ET_MAC_CFG2_MODE_MII;
  ctrl |= ET_MAC_CTRL_MODE_MII;
 }

 if (IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) {
  cfg2 |= ET_MAC_CFG2_FDX;
  if (IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_RXPAUSE)
   cfg1 |= ET_MAC_CFG1_RXFLOW;
 } else
  ctrl |= ET_MAC_CTRL_GHDX;

 CSR_WRITE_4(sc, ET_MAC_CTRL, ctrl);
 CSR_WRITE_4(sc, ET_MAC_CFG2, cfg2);
 cfg1 |= ET_MAC_CFG1_TXEN | ET_MAC_CFG1_RXEN;
 CSR_WRITE_4(sc, ET_MAC_CFG1, cfg1);



 for (i = 0; i < 50; ++i) {
  cfg1 = CSR_READ_4(sc, ET_MAC_CFG1);
  if ((cfg1 & (ET_MAC_CFG1_SYNC_TXEN | ET_MAC_CFG1_SYNC_RXEN)) ==
      (ET_MAC_CFG1_SYNC_TXEN | ET_MAC_CFG1_SYNC_RXEN))
   break;
  DELAY(100);
 }
 if (i == 50)
  if_printf(ifp, "can't enable RX/TX\n");
 sc->sc_flags |= ET_FLAG_TXRX_ENABLED;


}
