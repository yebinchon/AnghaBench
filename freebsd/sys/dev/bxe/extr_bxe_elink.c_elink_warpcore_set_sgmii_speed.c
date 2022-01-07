
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct elink_phy {int req_line_speed; scalar_t__ req_duplex; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ DUPLEX_FULL ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;



 int ELINK_SPEED_AUTO_NEG ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_COMBO_IEEE0_MIICTRL ;
 int MDIO_WC_REG_RX66_CONTROL ;
 int MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1 ;
 int MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_read_and_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_cl45_read_or_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_warpcore_set_lpi_passthrough (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static void elink_warpcore_set_sgmii_speed(struct elink_phy *phy,
        struct elink_params *params,
        uint8_t fiber_mode,
        uint8_t always_autoneg)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val16, digctrl_kx1, digctrl_kx2;


 elink_cl45_read_and_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_RX66_CONTROL, ~(3<<13));

 elink_warpcore_set_lpi_passthrough(phy, params);

 if (always_autoneg || phy->req_line_speed == ELINK_SPEED_AUTO_NEG) {

  elink_cl45_read_or_write(sc, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_COMBO_IEEE0_MIICTRL,
      0x1000);
  ELINK_DEBUG_P0(sc, "set SGMII AUTONEG\n");
 } else {
  elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_COMBO_IEEE0_MIICTRL, &val16);
  val16 &= 0xcebf;
  switch (phy->req_line_speed) {
  case 130:
   break;
  case 129:
   val16 |= 0x2000;
   break;
  case 128:
   val16 |= 0x0040;
   break;
  default:
   ELINK_DEBUG_P1(sc,
      "Speed not supported: 0x%x\n", phy->req_line_speed);
   return;
  }

  if (phy->req_duplex == DUPLEX_FULL)
   val16 |= 0x0100;

  elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_COMBO_IEEE0_MIICTRL, val16);

  ELINK_DEBUG_P1(sc, "set SGMII force speed %d\n",
          phy->req_line_speed);
  elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_COMBO_IEEE0_MIICTRL, &val16);
  ELINK_DEBUG_P1(sc, "  (readback) %x\n", val16);
 }


 elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1, &digctrl_kx1);
 if (fiber_mode)
  digctrl_kx1 = 1;
 else
  digctrl_kx1 &= 0xff4a;

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
   digctrl_kx1);


 elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2, &digctrl_kx2);
 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
   (digctrl_kx2 & ~(1<<2)));


 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
   (digctrl_kx2 | (1<<2)));


 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
   (digctrl_kx1 | 0x10));
}
