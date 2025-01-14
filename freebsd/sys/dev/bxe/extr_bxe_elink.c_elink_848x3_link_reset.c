
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_phy {scalar_t__ type; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CHIP_IS_E1x (struct bxe_softc*) ;
 int MDIO_84833_SUPER_ISOLATE ;
 int MDIO_84833_TOP_CFG_XGPHY_STRAP1 ;
 int MDIO_CTL_DEVAD ;
 int MISC_REGISTERS_GPIO_3 ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823 ;
 int SC_PATH (struct bxe_softc*) ;
 int elink_cb_gpio_write (struct bxe_softc*,int ,int ,int ) ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int *) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;

__attribute__((used)) static void elink_848x3_link_reset(struct elink_phy *phy,
       struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 uint8_t port;
 uint16_t val16;

 if (!(CHIP_IS_E1x(sc)))
  port = SC_PATH(sc);
 else
  port = params->port;

 if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823) {
  elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_3,
          MISC_REGISTERS_GPIO_OUTPUT_LOW,
          port);
 } else {
  elink_cl45_read(sc, phy,
    MDIO_CTL_DEVAD,
    MDIO_84833_TOP_CFG_XGPHY_STRAP1, &val16);
  val16 |= MDIO_84833_SUPER_ISOLATE;
  elink_cl45_write(sc, phy,
     MDIO_CTL_DEVAD,
     MDIO_84833_TOP_CFG_XGPHY_STRAP1, val16);
 }
}
