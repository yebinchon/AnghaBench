
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_phy {int flags; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_FLAGS_NOC ;




 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8727_GPIO_CTRL ;
 int MDIO_PMA_REG_8727_PCS_OPT_CTRL ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_8727_set_link_led(struct elink_phy *phy,
        struct elink_params *params, uint8_t mode)
{
 struct bxe_softc *sc = params->sc;
 uint16_t led_mode_bitmask = 0;
 uint16_t gpio_pins_bitmask = 0;
 uint16_t val;

 if (!(phy->flags & ELINK_FLAGS_NOC))
  return;
 switch (mode) {
 case 131:
 case 130:
  led_mode_bitmask = 0;
  gpio_pins_bitmask = 0x03;
  break;
 case 129:
  led_mode_bitmask = 0;
  gpio_pins_bitmask = 0x02;
  break;
 case 128:
  led_mode_bitmask = 0x60;
  gpio_pins_bitmask = 0x11;
  break;
 }
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8727_PCS_OPT_CTRL,
   &val);
 val &= 0xff8f;
 val |= led_mode_bitmask;
 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_PCS_OPT_CTRL,
    val);
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8727_GPIO_CTRL,
   &val);
 val &= 0xffe0;
 val |= gpio_pins_bitmask;
 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_GPIO_CTRL,
    val);
}
