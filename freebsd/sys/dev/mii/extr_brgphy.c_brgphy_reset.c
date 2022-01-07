
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int mii_mpd_oui; int mii_mpd_rev; TYPE_1__* mii_pdata; int mii_mpd_model; } ;
struct bge_softc {int bge_phy_flags; int bge_flags; scalar_t__ bge_asicrev; } ;
struct bce_softc {int bce_phy_flags; int bce_shared_hw_cfg; int bce_port_hw_cfg; } ;
typedef int if_t ;
struct TYPE_2__ {int mii_ifp; } ;


 scalar_t__ BCE_CHIP_ID (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_ID_5708_A0 ;
 scalar_t__ BCE_CHIP_ID_5708_B0 ;
 scalar_t__ BCE_CHIP_ID_5708_B1 ;
 scalar_t__ BCE_CHIP_NUM (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_NUM_5708 ;
 scalar_t__ BCE_CHIP_NUM_5709 ;
 scalar_t__ BCE_CHIP_REV (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_REV_Ax ;
 scalar_t__ BCE_CHIP_REV_Bx ;
 int BCE_PHY_2_5G_CAPABLE_FLAG ;
 int BCE_PHY_SERDES_FLAG ;
 int BCE_PORT_HW_CFG_CFG_TXCTL3_MASK ;
 int BCE_SHARED_HW_CFG_PHY_BACKPLANE ;
 scalar_t__ BGE_ASICREV_BCM5906 ;
 int BGE_FLAG_JUMBO ;
 int BGE_PHY_5704_A0_BUG ;
 int BGE_PHY_ADC_BUG ;
 int BGE_PHY_ADJUST_TRIM ;
 int BGE_PHY_BER_BUG ;
 int BGE_PHY_CRC_BUG ;
 int BGE_PHY_JITTER_BUG ;
 int BGE_PHY_NO_3LED ;
 int BGE_PHY_NO_WIRESPEED ;
 int BRGPHY_5708S_ANEG_NXT_PG_XMIT1 ;
 int BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G ;
 int BRGPHY_5708S_BLOCK_ADDR ;
 int BRGPHY_5708S_DIG3_PG2 ;
 int BRGPHY_5708S_DIG_PG0 ;
 int BRGPHY_5708S_PG0_1000X_CTL1 ;
 int BRGPHY_5708S_PG0_1000X_CTL1_AUTODET_EN ;
 int BRGPHY_5708S_PG0_1000X_CTL1_FIBER_MODE ;
 int BRGPHY_5708S_PG0_1000X_CTL2 ;
 int BRGPHY_5708S_PG0_1000X_CTL2_PAR_DET_EN ;
 int BRGPHY_5708S_PG2_DIGCTL_3_0 ;
 int BRGPHY_5708S_PG2_DIGCTL_3_0_USE_IEEE ;
 int BRGPHY_5708S_PG5_TXACTL1 ;
 int BRGPHY_5708S_PG5_TXACTL3 ;
 int BRGPHY_5708S_TX_MISC_PG5 ;
 int BRGPHY_BLOCK_ADDR ;
 int BRGPHY_BLOCK_ADDR_CL73_USER_B0 ;
 int BRGPHY_BLOCK_ADDR_COMBO_IEEE0 ;
 int BRGPHY_BLOCK_ADDR_MRBE ;
 int BRGPHY_BLOCK_ADDR_OVER_1G ;
 int BRGPHY_BLOCK_ADDR_SERDES_DIG ;
 int BRGPHY_BMCR_RESET ;
 int BRGPHY_CL73_USER_B0_MBRE_CTL1 ;
 int BRGPHY_CL73_USER_B0_MBRE_CTL1_ANEG ;
 int BRGPHY_CL73_USER_B0_MBRE_CTL1_NP_AFT_BP ;
 int BRGPHY_CL73_USER_B0_MBRE_CTL1_STA_MGR ;
 int BRGPHY_MII_BMCR ;
 int BRGPHY_MII_EPHY_PTEST ;
 int BRGPHY_MII_PHY_EXTCTL ;
 int BRGPHY_MRBE_MSG_PG5_NP ;
 int BRGPHY_MRBE_MSG_PG5_NP_MBRE ;
 int BRGPHY_MRBE_MSG_PG5_NP_T2 ;
 int BRGPHY_OVER_1G_UNFORMAT_PG1 ;
 int BRGPHY_PHY_EXTCTL_3_LED ;
 int BRGPHY_SD_DIG_1000X_CTL1_AUTODET ;
 int BRGPHY_SD_DIG_1000X_CTL1_FIBER ;
 int BRGPHY_SERDES_DIG_1000X_CTL1 ;
 int DELAY (int) ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int bcm5401_load_dspcode (struct mii_softc*) ;
 int bcm5411_load_dspcode (struct mii_softc*) ;
 int bcm54k2_load_dspcode (struct mii_softc*) ;
 int brgphy_ethernet_wirespeed (struct mii_softc*) ;
 int brgphy_fixup_5704_a0_bug (struct mii_softc*) ;
 int brgphy_fixup_adc_bug (struct mii_softc*) ;
 int brgphy_fixup_adjust_trim (struct mii_softc*) ;
 int brgphy_fixup_ber_bug (struct mii_softc*) ;
 int brgphy_fixup_crc_bug (struct mii_softc*) ;
 int brgphy_fixup_disable_early_dac (struct mii_softc*) ;
 int brgphy_fixup_jitter_bug (struct mii_softc*) ;
 int brgphy_jumbo_settings (struct mii_softc*,int ) ;
 int if_getmtu (int ) ;
 scalar_t__ mii_phy_mac_match (struct mii_softc*,char*) ;
 void* mii_phy_mac_softc (struct mii_softc*) ;

__attribute__((used)) static void
brgphy_reset(struct mii_softc *sc)
{
 struct bge_softc *bge_sc = ((void*)0);
 struct bce_softc *bce_sc = ((void*)0);
 if_t ifp;
 int i, val;







 PHY_WRITE(sc, BRGPHY_MII_BMCR, BRGPHY_BMCR_RESET);


 for (i = 0; i < 100; i++) {
  if ((PHY_READ(sc, BRGPHY_MII_BMCR) & BRGPHY_BMCR_RESET) == 0)
   break;
  DELAY(1000);
 }


 switch (sc->mii_mpd_oui) {
 case 130:
  switch (sc->mii_mpd_model) {
  case 134:
   bcm5401_load_dspcode(sc);
   break;
  case 133:
   if (sc->mii_mpd_rev == 1 || sc->mii_mpd_rev == 3)
    bcm5401_load_dspcode(sc);
   break;
  case 132:
   bcm5411_load_dspcode(sc);
   break;
  case 131:
   bcm54k2_load_dspcode(sc);
   break;
  }
  break;
 case 129:
  switch (sc->mii_mpd_model) {
  case 138:
  case 137:
  case 136:
  case 135:
   return;
  }
  break;
 case 128:
  return;
 }

 ifp = sc->mii_pdata->mii_ifp;


 if (mii_phy_mac_match(sc, "bge"))
  bge_sc = mii_phy_mac_softc(sc);
 else if (mii_phy_mac_match(sc, "bce"))
  bce_sc = mii_phy_mac_softc(sc);

 if (bge_sc) {

  if (bge_sc->bge_phy_flags & BGE_PHY_5704_A0_BUG)
   brgphy_fixup_5704_a0_bug(sc);
  if (bge_sc->bge_phy_flags & BGE_PHY_ADC_BUG)
   brgphy_fixup_adc_bug(sc);
  if (bge_sc->bge_phy_flags & BGE_PHY_ADJUST_TRIM)
   brgphy_fixup_adjust_trim(sc);
  if (bge_sc->bge_phy_flags & BGE_PHY_BER_BUG)
   brgphy_fixup_ber_bug(sc);
  if (bge_sc->bge_phy_flags & BGE_PHY_CRC_BUG)
   brgphy_fixup_crc_bug(sc);
  if (bge_sc->bge_phy_flags & BGE_PHY_JITTER_BUG)
   brgphy_fixup_jitter_bug(sc);

  if (bge_sc->bge_flags & BGE_FLAG_JUMBO)
   brgphy_jumbo_settings(sc, if_getmtu(ifp));

  if ((bge_sc->bge_phy_flags & BGE_PHY_NO_WIRESPEED) == 0)
   brgphy_ethernet_wirespeed(sc);


  if (bge_sc->bge_phy_flags & BGE_PHY_NO_3LED) {
   PHY_WRITE(sc, BRGPHY_MII_PHY_EXTCTL,
       PHY_READ(sc, BRGPHY_MII_PHY_EXTCTL) &
       ~BRGPHY_PHY_EXTCTL_3_LED);
  }


  if (bge_sc->bge_asicrev == BGE_ASICREV_BCM5906)
   PHY_WRITE(sc, BRGPHY_MII_EPHY_PTEST, 0x12);
 } else if (bce_sc) {
  if (BCE_CHIP_NUM(bce_sc) == BCE_CHIP_NUM_5708 &&
   (bce_sc->bce_phy_flags & BCE_PHY_SERDES_FLAG)) {


   PHY_WRITE(sc, BRGPHY_5708S_BLOCK_ADDR, BRGPHY_5708S_DIG3_PG2);
   PHY_WRITE(sc, BRGPHY_5708S_PG2_DIGCTL_3_0,
    BRGPHY_5708S_PG2_DIGCTL_3_0_USE_IEEE);
   PHY_WRITE(sc, BRGPHY_5708S_BLOCK_ADDR, BRGPHY_5708S_DIG_PG0);


   PHY_WRITE(sc, BRGPHY_5708S_PG0_1000X_CTL1,
    PHY_READ(sc, BRGPHY_5708S_PG0_1000X_CTL1) |
    BRGPHY_5708S_PG0_1000X_CTL1_AUTODET_EN |
    BRGPHY_5708S_PG0_1000X_CTL1_FIBER_MODE);


   PHY_WRITE(sc, BRGPHY_5708S_PG0_1000X_CTL2,
    PHY_READ(sc, BRGPHY_5708S_PG0_1000X_CTL2) |
    BRGPHY_5708S_PG0_1000X_CTL2_PAR_DET_EN);


   if (bce_sc->bce_phy_flags & BCE_PHY_2_5G_CAPABLE_FLAG)
    PHY_WRITE(sc, BRGPHY_5708S_ANEG_NXT_PG_XMIT1,
     PHY_READ(sc, BRGPHY_5708S_ANEG_NXT_PG_XMIT1) |
     BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G);


   if ((BCE_CHIP_ID(bce_sc) == BCE_CHIP_ID_5708_A0) ||
       (BCE_CHIP_ID(bce_sc) == BCE_CHIP_ID_5708_B0) ||
       (BCE_CHIP_ID(bce_sc) == BCE_CHIP_ID_5708_B1)) {
    PHY_WRITE(sc, BRGPHY_5708S_BLOCK_ADDR,
     BRGPHY_5708S_TX_MISC_PG5);
    PHY_WRITE(sc, BRGPHY_5708S_PG5_TXACTL1,
     PHY_READ(sc, BRGPHY_5708S_PG5_TXACTL1) & ~0x30);
    PHY_WRITE(sc, BRGPHY_5708S_BLOCK_ADDR,
     BRGPHY_5708S_DIG_PG0);
   }


   if ((bce_sc->bce_shared_hw_cfg & BCE_SHARED_HW_CFG_PHY_BACKPLANE) &&
    (bce_sc->bce_port_hw_cfg & BCE_PORT_HW_CFG_CFG_TXCTL3_MASK)) {
     PHY_WRITE(sc, BRGPHY_5708S_BLOCK_ADDR,
      BRGPHY_5708S_TX_MISC_PG5);
     PHY_WRITE(sc, BRGPHY_5708S_PG5_TXACTL3,
      bce_sc->bce_port_hw_cfg &
      BCE_PORT_HW_CFG_CFG_TXCTL3_MASK);
     PHY_WRITE(sc, BRGPHY_5708S_BLOCK_ADDR,
      BRGPHY_5708S_DIG_PG0);
   }
  } else if (BCE_CHIP_NUM(bce_sc) == BCE_CHIP_NUM_5709 &&
   (bce_sc->bce_phy_flags & BCE_PHY_SERDES_FLAG)) {


   PHY_WRITE(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_SERDES_DIG);
   val = PHY_READ(sc, BRGPHY_SERDES_DIG_1000X_CTL1);
   val &= ~BRGPHY_SD_DIG_1000X_CTL1_AUTODET;
   val |= BRGPHY_SD_DIG_1000X_CTL1_FIBER;
   PHY_WRITE(sc, BRGPHY_SERDES_DIG_1000X_CTL1, val);


   PHY_WRITE(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_OVER_1G);


   val = PHY_READ(sc, BRGPHY_OVER_1G_UNFORMAT_PG1);
   if (bce_sc->bce_phy_flags & BCE_PHY_2_5G_CAPABLE_FLAG)
    val |= BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G;
   else
    val &= ~BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G;
   PHY_WRITE(sc, BRGPHY_OVER_1G_UNFORMAT_PG1, val);


   PHY_WRITE(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_MRBE);


   val = PHY_READ(sc, BRGPHY_MRBE_MSG_PG5_NP);
   val |= BRGPHY_MRBE_MSG_PG5_NP_MBRE |
       BRGPHY_MRBE_MSG_PG5_NP_T2;
   PHY_WRITE(sc, BRGPHY_MRBE_MSG_PG5_NP, val);


   PHY_WRITE(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_CL73_USER_B0);


   PHY_WRITE(sc, BRGPHY_CL73_USER_B0_MBRE_CTL1,
       BRGPHY_CL73_USER_B0_MBRE_CTL1_NP_AFT_BP |
       BRGPHY_CL73_USER_B0_MBRE_CTL1_STA_MGR |
       BRGPHY_CL73_USER_B0_MBRE_CTL1_ANEG);


   PHY_WRITE(sc, BRGPHY_BLOCK_ADDR, BRGPHY_BLOCK_ADDR_COMBO_IEEE0);
        } else if (BCE_CHIP_NUM(bce_sc) == BCE_CHIP_NUM_5709) {
   if ((BCE_CHIP_REV(bce_sc) == BCE_CHIP_REV_Ax) ||
    (BCE_CHIP_REV(bce_sc) == BCE_CHIP_REV_Bx))
    brgphy_fixup_disable_early_dac(sc);

   brgphy_jumbo_settings(sc, if_getmtu(ifp));
   brgphy_ethernet_wirespeed(sc);
  } else {
   brgphy_fixup_ber_bug(sc);
   brgphy_jumbo_settings(sc, if_getmtu(ifp));
   brgphy_ethernet_wirespeed(sc);
  }
 }
}
