
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {scalar_t__ req_line_speed; scalar_t__ media_type; int speed_cap_mask; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 scalar_t__ ELINK_DUAL_MEDIA (struct elink_params*) ;
 scalar_t__ ELINK_ETH_PHY_SFP_1G_FIBER ;
 scalar_t__ ELINK_SPEED_1000 ;
 scalar_t__ ELINK_SPEED_AUTO_NEG ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_8727_MISC_CTRL ;
 int MDIO_AN_REG_CL37_AN ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_10G_CTRL2 ;
 int MDIO_PMA_REG_8727_PCS_GP ;
 int MDIO_PMA_REG_CTRL ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_8727_config_speed(struct elink_phy *phy,
        struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 uint16_t tmp1, val;

 if ((phy->req_line_speed == ELINK_SPEED_1000) ||
     (phy->media_type == ELINK_ETH_PHY_SFP_1G_FIBER)) {
  ELINK_DEBUG_P0(sc, "Setting 1G force\n");
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x40);
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0xD);
  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, &tmp1);
  ELINK_DEBUG_P1(sc, "1.7 = 0x%x\n", tmp1);



  if (ELINK_DUAL_MEDIA(params)) {
   elink_cl45_read(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8727_PCS_GP, &val);
   val |= (3<<10);
   elink_cl45_write(sc, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8727_PCS_GP, val);
  }
 } else if ((phy->req_line_speed == ELINK_SPEED_AUTO_NEG) &&
     ((phy->speed_cap_mask &
       PORT_HW_CFG_SPEED_CAPABILITY_D0_1G)) &&
     ((phy->speed_cap_mask &
        PORT_HW_CFG_SPEED_CAPABILITY_D0_10G) !=
     PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)) {

  ELINK_DEBUG_P0(sc, "Setting 1G clause37\n");
  elink_cl45_write(sc, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_8727_MISC_CTRL, 0);
  elink_cl45_write(sc, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x1300);
 } else {



  elink_cl45_write(sc, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_8727_MISC_CTRL,
     0x0020);
  elink_cl45_write(sc, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x0100);
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x2040);
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2,
     0x0008);
 }
}
