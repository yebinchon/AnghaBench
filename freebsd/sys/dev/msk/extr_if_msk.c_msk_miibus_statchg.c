
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msk_softc {int dummy; } ;
struct msk_if_softc {int msk_flags; int msk_port; struct ifnet* msk_ifp; int msk_miibus; struct msk_softc* msk_softc; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int CSR_WRITE_1 (struct msk_softc*,int ,int) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int) ;
 int GMAC_CTRL ;
 int GMAC_IRQ_MSK ;
 int GMAC_READ_2 (struct msk_softc*,int ,int ) ;
 int GMAC_WRITE_2 (struct msk_softc*,int ,int ,int) ;
 int GMC_PAUSE_OFF ;
 int GMC_PAUSE_ON ;
 int GM_GPCR_AU_ALL_DIS ;
 int GM_GPCR_DUP_FULL ;
 int GM_GPCR_FC_RX_DIS ;
 int GM_GPCR_FC_TX_DIS ;
 int GM_GPCR_RX_ENA ;
 int GM_GPCR_SPEED_100 ;
 int GM_GPCR_SPEED_1000 ;
 int GM_GPCR_TX_ENA ;
 int GM_GP_CTRL ;
 int GM_IS_RX_FF_OR ;
 int GM_IS_TX_FF_UR ;
 int IFF_DRV_RUNNING ;






 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 int MR_ADDR (int ,int ) ;
 int MSK_FLAG_FASTETHER ;
 int MSK_FLAG_LINK ;
 int MSK_IF_LOCK_ASSERT (struct msk_if_softc*) ;
 int PHY_ADDR_MARV ;
 int PHY_MARV_INT_MASK ;
 int PHY_M_IS_FIFO_ERROR ;
 void* device_get_softc (int ) ;
 int msk_phy_writereg (struct msk_if_softc*,int ,int ,int ) ;

__attribute__((used)) static void
msk_miibus_statchg(device_t dev)
{
 struct msk_softc *sc;
 struct msk_if_softc *sc_if;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t gmac;

 sc_if = device_get_softc(dev);
 sc = sc_if->msk_softc;

 MSK_IF_LOCK_ASSERT(sc_if);

 mii = device_get_softc(sc_if->msk_miibus);
 ifp = sc_if->msk_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc_if->msk_flags &= ~MSK_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_AVALID | IFM_ACTIVE)) ==
     (IFM_AVALID | IFM_ACTIVE)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc_if->msk_flags |= MSK_FLAG_LINK;
   break;
  case 130:
  case 131:
  case 132:
  case 133:
   if ((sc_if->msk_flags & MSK_FLAG_FASTETHER) == 0)
    sc_if->msk_flags |= MSK_FLAG_LINK;
   break;
  default:
   break;
  }
 }

 if ((sc_if->msk_flags & MSK_FLAG_LINK) != 0) {

  CSR_WRITE_1(sc, MR_ADDR(sc_if->msk_port, GMAC_IRQ_MSK),
      GM_IS_TX_FF_UR | GM_IS_RX_FF_OR);





  gmac = GM_GPCR_AU_ALL_DIS;
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 131:
  case 130:
   gmac |= GM_GPCR_SPEED_1000;
   break;
  case 129:
   gmac |= GM_GPCR_SPEED_100;
   break;
  case 128:
   break;
  }

  if ((IFM_OPTIONS(mii->mii_media_active) &
      IFM_ETH_RXPAUSE) == 0)
   gmac |= GM_GPCR_FC_RX_DIS;
  if ((IFM_OPTIONS(mii->mii_media_active) &
       IFM_ETH_TXPAUSE) == 0)
   gmac |= GM_GPCR_FC_TX_DIS;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0)
   gmac |= GM_GPCR_DUP_FULL;
  else
   gmac |= GM_GPCR_FC_RX_DIS | GM_GPCR_FC_TX_DIS;
  gmac |= GM_GPCR_RX_ENA | GM_GPCR_TX_ENA;
  GMAC_WRITE_2(sc, sc_if->msk_port, GM_GP_CTRL, gmac);

  GMAC_READ_2(sc, sc_if->msk_port, GM_GP_CTRL);
  gmac = GMC_PAUSE_OFF;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
   if ((IFM_OPTIONS(mii->mii_media_active) &
       IFM_ETH_RXPAUSE) != 0)
    gmac = GMC_PAUSE_ON;
  }
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, GMAC_CTRL), gmac);


  msk_phy_writereg(sc_if, PHY_ADDR_MARV,
      PHY_MARV_INT_MASK, PHY_M_IS_FIFO_ERROR);
 } else {




  msk_phy_writereg(sc_if, PHY_ADDR_MARV, PHY_MARV_INT_MASK, 0);

  gmac = GMAC_READ_2(sc, sc_if->msk_port, GM_GP_CTRL);
  if ((gmac & (GM_GPCR_RX_ENA | GM_GPCR_TX_ENA)) != 0) {
   gmac &= ~(GM_GPCR_RX_ENA | GM_GPCR_TX_ENA);
   GMAC_WRITE_2(sc, sc_if->msk_port, GM_GP_CTRL, gmac);

   GMAC_READ_2(sc, sc_if->msk_port, GM_GP_CTRL);
  }
 }
}
