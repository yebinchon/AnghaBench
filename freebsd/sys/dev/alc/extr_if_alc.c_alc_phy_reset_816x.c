
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_flags; } ;


 int ALC_FLAG_LINK_WAR ;
 int ALC_GPHY_CFG ;
 int ALC_LPI_CTL ;
 int ANEG_NLP78_120M_DEFAULT ;
 int ANEG_S3DIG10_DEFAULT ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DBG_ANACTL_DEFAULT ;
 int DBG_GREENCFG2_BP_GREEN ;
 int DBG_GREENCFG2_GATE_DFSE_EN ;
 int DBG_GREENCFG_DEFAULT ;
 int DBG_HIBNEG_DEFAULT ;
 int DBG_HIBNEG_HIB_PULSE ;
 int DBG_HIBNEG_PSHIB_EN ;
 int DBG_LEGCYPS_DEFAULT ;
 int DBG_LEGCYPS_ENB ;
 int DBG_SRDSYSMOD_DEFAULT ;
 int DBG_SYSMODCTL_DEFAULT ;
 int DBG_TST100BTCFG_DEFAULT ;
 int DBG_TST10BTCFG_DEFAULT ;
 int DELAY (int) ;
 int EXT_CLDCTL3_BP_CABLE1TH_DET_GT ;
 int EXT_CLDCTL5_BP_VD_HLFBIAS ;
 int EXT_VDRVBIAS_DEFAULT ;
 int GPHY_CFG_100AB_ENB ;
 int GPHY_CFG_EXT_RESET ;
 int GPHY_CFG_GATE_25M_ENB ;
 int GPHY_CFG_HIB_EN ;
 int GPHY_CFG_HIB_PULSE ;
 int GPHY_CFG_LED_MODE ;
 int GPHY_CFG_PHY_IDDQ ;
 int GPHY_CFG_PHY_PLL_ON ;
 int GPHY_CFG_PWDOWN_HW ;
 int GPHY_CFG_SEL_ANA_RESET ;
 int LPI_CTL_ENB ;
 int MII_DBG_ANACTL ;
 int MII_DBG_GREENCFG ;
 int MII_DBG_GREENCFG2 ;
 int MII_DBG_HIBNEG ;
 int MII_DBG_LEGCYPS ;
 int MII_DBG_SRDSYSMOD ;
 int MII_DBG_SYSMODCTL ;
 int MII_DBG_TST100BTCFG ;
 int MII_DBG_TST10BTCFG ;
 int MII_EXT_ANEG ;
 int MII_EXT_ANEG_LOCAL_EEEADV ;
 int MII_EXT_ANEG_NLP78 ;
 int MII_EXT_ANEG_S3DIG10 ;
 int MII_EXT_CLDCTL3 ;
 int MII_EXT_CLDCTL5 ;
 int MII_EXT_PCS ;
 int MII_EXT_VDRVBIAS ;
 int alc_miidbg_readreg (struct alc_softc*,int ) ;
 int alc_miidbg_writereg (struct alc_softc*,int ,int) ;
 int alc_miiext_readreg (struct alc_softc*,int ,int ) ;
 int alc_miiext_writereg (struct alc_softc*,int ,int ,int) ;

__attribute__((used)) static void
alc_phy_reset_816x(struct alc_softc *sc)
{
 uint32_t val;

 val = CSR_READ_4(sc, ALC_GPHY_CFG);
 val &= ~(GPHY_CFG_EXT_RESET | GPHY_CFG_LED_MODE |
     GPHY_CFG_GATE_25M_ENB | GPHY_CFG_PHY_IDDQ | GPHY_CFG_PHY_PLL_ON |
     GPHY_CFG_PWDOWN_HW | GPHY_CFG_100AB_ENB);
 val |= GPHY_CFG_SEL_ANA_RESET;




 val &= ~(GPHY_CFG_HIB_PULSE | GPHY_CFG_HIB_EN);

 CSR_WRITE_4(sc, ALC_GPHY_CFG, val);
 DELAY(10);
 CSR_WRITE_4(sc, ALC_GPHY_CFG, val | GPHY_CFG_EXT_RESET);
 DELAY(800);
 alc_miidbg_writereg(sc, MII_DBG_LEGCYPS,
     DBG_LEGCYPS_DEFAULT & ~DBG_LEGCYPS_ENB);
 alc_miidbg_writereg(sc, MII_DBG_HIBNEG,
     DBG_HIBNEG_DEFAULT & ~(DBG_HIBNEG_PSHIB_EN | DBG_HIBNEG_HIB_PULSE));
 alc_miidbg_writereg(sc, MII_DBG_GREENCFG, DBG_GREENCFG_DEFAULT);



 val = CSR_READ_4(sc, ALC_LPI_CTL);
 val &= ~LPI_CTL_ENB;
 CSR_WRITE_4(sc, ALC_LPI_CTL, val);
 alc_miiext_writereg(sc, MII_EXT_ANEG, MII_EXT_ANEG_LOCAL_EEEADV, 0);


 alc_miidbg_writereg(sc, MII_DBG_TST10BTCFG, DBG_TST10BTCFG_DEFAULT);
 alc_miidbg_writereg(sc, MII_DBG_SRDSYSMOD, DBG_SRDSYSMOD_DEFAULT);
 alc_miidbg_writereg(sc, MII_DBG_TST100BTCFG, DBG_TST100BTCFG_DEFAULT);
 alc_miidbg_writereg(sc, MII_DBG_ANACTL, DBG_ANACTL_DEFAULT);
 val = alc_miidbg_readreg(sc, MII_DBG_GREENCFG2);
 val &= ~DBG_GREENCFG2_GATE_DFSE_EN;
 alc_miidbg_writereg(sc, MII_DBG_GREENCFG2, val);


 alc_miiext_writereg(sc, MII_EXT_ANEG, MII_EXT_ANEG_NLP78,
     ANEG_NLP78_120M_DEFAULT);
 alc_miiext_writereg(sc, MII_EXT_ANEG, MII_EXT_ANEG_S3DIG10,
     ANEG_S3DIG10_DEFAULT);

 if ((sc->alc_flags & ALC_FLAG_LINK_WAR) != 0) {

  val = alc_miiext_readreg(sc, MII_EXT_PCS, MII_EXT_CLDCTL3);
  val |= EXT_CLDCTL3_BP_CABLE1TH_DET_GT;
  alc_miiext_writereg(sc, MII_EXT_PCS, MII_EXT_CLDCTL3, val);

  val = alc_miidbg_readreg(sc, MII_DBG_GREENCFG2);
  val |= DBG_GREENCFG2_BP_GREEN;
  alc_miidbg_writereg(sc, MII_DBG_GREENCFG2, val);

  val = alc_miiext_readreg(sc, MII_EXT_PCS, MII_EXT_CLDCTL5);
  val |= EXT_CLDCTL5_BP_VD_HLFBIAS;
  alc_miiext_writereg(sc, MII_EXT_PCS, MII_EXT_CLDCTL5, val);
 }
}
