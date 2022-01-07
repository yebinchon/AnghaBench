
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CL22_RD_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL ;
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN ;
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN ;
 int MDIO_COMBO_IEEE0_MII_CONTROL ;
 int MDIO_COMBO_IEEO_MII_CONTROL_AN_EN ;
 int MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN ;
 int MDIO_REG_BANK_CL73_IEEEB0 ;
 int MDIO_REG_BANK_COMBO_IEEE0 ;

__attribute__((used)) static void elink_restart_autoneg(struct elink_phy *phy,
      struct elink_params *params,
      uint8_t enable_cl73)
{
 struct bxe_softc *sc = params->sc;
 uint16_t mii_control;

 ELINK_DEBUG_P0(sc, "elink_restart_autoneg\n");


 if (enable_cl73) {
  CL22_RD_OVER_CL45(sc, phy,
      MDIO_REG_BANK_CL73_IEEEB0,
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
      &mii_control);

  CL22_WR_OVER_CL45(sc, phy,
      MDIO_REG_BANK_CL73_IEEEB0,
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
      (mii_control |
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN |
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN));
 } else {

  CL22_RD_OVER_CL45(sc, phy,
      MDIO_REG_BANK_COMBO_IEEE0,
      MDIO_COMBO_IEEE0_MII_CONTROL,
      &mii_control);
  ELINK_DEBUG_P1(sc,
    "elink_restart_autoneg mii_control before = 0x%x\n",
    mii_control);
  CL22_WR_OVER_CL45(sc, phy,
      MDIO_REG_BANK_COMBO_IEEE0,
      MDIO_COMBO_IEEE0_MII_CONTROL,
      (mii_control |
       MDIO_COMBO_IEEO_MII_CONTROL_AN_EN |
       MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN));
 }
}
