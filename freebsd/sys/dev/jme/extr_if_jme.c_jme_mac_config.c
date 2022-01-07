
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_active; } ;
struct jme_softc {int jme_flags; scalar_t__ jme_rev; scalar_t__ jme_chip_rev; int jme_phyaddr; int jme_dev; int jme_miibus; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int DELAY (int) ;
 scalar_t__ DEVICEID_JMC250 ;
 scalar_t__ DEVICEREVID_JMC250_A2 ;
 int GHC_FULL_DUPLEX ;
 int GHC_RESET ;
 int GHC_SPEED_10 ;
 int GHC_SPEED_100 ;
 int GHC_SPEED_1000 ;
 int GHC_TX_MAC_CLK_100 ;
 int GHC_TX_MAC_CLK_1000 ;
 int GHC_TX_OFFLD_CLK_100 ;
 int GHC_TX_OFFLD_CLK_1000 ;
 int GPREG1_HDPX_FIX ;



 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int const IFM_SUBTYPE (int ) ;
 int JME_FLAG_FASTETH ;
 int JME_FLAG_TXCLK ;
 int JME_GHC ;
 int JME_GPREG1 ;
 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int JME_RXMAC ;
 int JME_TXMAC ;
 int JME_TXPFC ;
 int JME_TXTRHD ;
 int RXMAC_COLL_DET_ENB ;
 int RXMAC_FC_ENB ;
 int TXMAC_BACKOFF ;
 int TXMAC_CARRIER_EXT ;
 int TXMAC_CARRIER_SENSE ;
 int TXMAC_COLL_ENB ;
 int TXMAC_FRAME_BURST ;
 int TXPFC_PAUSE_ENB ;
 int TXTRHD_RT_LIMIT_ENB ;
 int TXTRHD_RT_PERIOD_ENB ;
 struct mii_data* device_get_softc (int ) ;
 int jme_miibus_writereg (int ,int ,int,int) ;

__attribute__((used)) static void
jme_mac_config(struct jme_softc *sc)
{
 struct mii_data *mii;
 uint32_t ghc, gpreg, rxmac, txmac, txpause;
 uint32_t txclk;

 JME_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->jme_miibus);

 CSR_WRITE_4(sc, JME_GHC, GHC_RESET);
 DELAY(10);
 CSR_WRITE_4(sc, JME_GHC, 0);
 ghc = 0;
 txclk = 0;
 rxmac = CSR_READ_4(sc, JME_RXMAC);
 rxmac &= ~RXMAC_FC_ENB;
 txmac = CSR_READ_4(sc, JME_TXMAC);
 txmac &= ~(TXMAC_CARRIER_EXT | TXMAC_FRAME_BURST);
 txpause = CSR_READ_4(sc, JME_TXPFC);
 txpause &= ~TXPFC_PAUSE_ENB;
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  ghc |= GHC_FULL_DUPLEX;
  rxmac &= ~RXMAC_COLL_DET_ENB;
  txmac &= ~(TXMAC_COLL_ENB | TXMAC_CARRIER_SENSE |
      TXMAC_BACKOFF | TXMAC_CARRIER_EXT |
      TXMAC_FRAME_BURST);
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
   txpause |= TXPFC_PAUSE_ENB;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
   rxmac |= RXMAC_FC_ENB;

  CSR_WRITE_4(sc, JME_TXTRHD, CSR_READ_4(sc, JME_TXTRHD) &
      ~(TXTRHD_RT_PERIOD_ENB | TXTRHD_RT_LIMIT_ENB));
 } else {
  rxmac |= RXMAC_COLL_DET_ENB;
  txmac |= TXMAC_COLL_ENB | TXMAC_CARRIER_SENSE | TXMAC_BACKOFF;

  CSR_WRITE_4(sc, JME_TXTRHD, CSR_READ_4(sc, JME_TXTRHD) |
      TXTRHD_RT_PERIOD_ENB | TXTRHD_RT_LIMIT_ENB);
 }

 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 128:
  ghc |= GHC_SPEED_10;
  txclk |= GHC_TX_OFFLD_CLK_100 | GHC_TX_MAC_CLK_100;
  break;
 case 129:
  ghc |= GHC_SPEED_100;
  txclk |= GHC_TX_OFFLD_CLK_100 | GHC_TX_MAC_CLK_100;
  break;
 case 130:
  if ((sc->jme_flags & JME_FLAG_FASTETH) != 0)
   break;
  ghc |= GHC_SPEED_1000;
  txclk |= GHC_TX_OFFLD_CLK_1000 | GHC_TX_MAC_CLK_1000;
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) == 0)
   txmac |= TXMAC_CARRIER_EXT | TXMAC_FRAME_BURST;
  break;
 default:
  break;
 }
 if (sc->jme_rev == DEVICEID_JMC250 &&
     sc->jme_chip_rev == DEVICEREVID_JMC250_A2) {




  gpreg = CSR_READ_4(sc, JME_GPREG1);
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0)
   gpreg &= ~GPREG1_HDPX_FIX;
  else
   gpreg |= GPREG1_HDPX_FIX;
  CSR_WRITE_4(sc, JME_GPREG1, gpreg);

  if (IFM_SUBTYPE(mii->mii_media_active) == 129) {

   jme_miibus_writereg(sc->jme_dev, sc->jme_phyaddr,
       0x1B, 0x0000);
  } else {

   jme_miibus_writereg(sc->jme_dev, sc->jme_phyaddr,
       0x1B, 0x0004);
  }
 }
 if ((sc->jme_flags & JME_FLAG_TXCLK) != 0)
  ghc |= txclk;
 CSR_WRITE_4(sc, JME_GHC, ghc);
 CSR_WRITE_4(sc, JME_RXMAC, rxmac);
 CSR_WRITE_4(sc, JME_TXMAC, txmac);
 CSR_WRITE_4(sc, JME_TXPFC, txpause);
}
