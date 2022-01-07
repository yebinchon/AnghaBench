
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct alc_softc {int alc_phyaddr; int alc_dev; TYPE_1__* alc_ident; } ;
struct TYPE_2__ {int deviceid; } ;


 int ALC_GPHY_CFG ;
 int BMCR_ISO ;
 int BMCR_PDOWN ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_2 (struct alc_softc*,int ,int) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 int GPHY_CFG_100AB_ENB ;
 int GPHY_CFG_EXT_RESET ;
 int GPHY_CFG_HIB_EN ;
 int GPHY_CFG_HIB_PULSE ;
 int GPHY_CFG_LED_MODE ;
 int GPHY_CFG_PHY_IDDQ ;
 int GPHY_CFG_PHY_PLL_ON ;
 int GPHY_CFG_PWDOWN_HW ;
 int GPHY_CFG_SEL_ANA_RESET ;
 int MII_BMCR ;
 int alc_miibus_writereg (int ,int ,int ,int) ;

__attribute__((used)) static void
alc_phy_down(struct alc_softc *sc)
{
 uint32_t gphy;

 switch (sc->alc_ident->deviceid) {
 case 134:
 case 130:
 case 129:
 case 128:
 case 133:
 case 132:
 case 131:
  gphy = CSR_READ_4(sc, ALC_GPHY_CFG);
  gphy &= ~(GPHY_CFG_EXT_RESET | GPHY_CFG_LED_MODE |
      GPHY_CFG_100AB_ENB | GPHY_CFG_PHY_PLL_ON);
  gphy |= GPHY_CFG_HIB_EN | GPHY_CFG_HIB_PULSE |
      GPHY_CFG_SEL_ANA_RESET;
  gphy |= GPHY_CFG_PHY_IDDQ | GPHY_CFG_PWDOWN_HW;
  CSR_WRITE_4(sc, ALC_GPHY_CFG, gphy);
  break;
 case 138:
 case 137:
 case 136:
 case 135:
  alc_miibus_writereg(sc->alc_dev, sc->alc_phyaddr,
      MII_BMCR, BMCR_ISO | BMCR_PDOWN);
  break;
 default:

  CSR_WRITE_2(sc, ALC_GPHY_CFG, GPHY_CFG_EXT_RESET |
      GPHY_CFG_SEL_ANA_RESET | GPHY_CFG_PHY_IDDQ |
      GPHY_CFG_PWDOWN_HW);
  DELAY(1000);
  break;
 }
}
