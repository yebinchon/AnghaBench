
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;






 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_7107_LINK_LED_CNTL ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_7101_set_link_led(struct elink_phy *phy,
        struct elink_params *params, uint8_t mode)
{
 uint16_t val = 0;
 struct bxe_softc *sc = params->sc;
 switch (mode) {
 case 131:
 case 130:
  val = 2;
  break;
 case 129:
  val = 1;
  break;
 case 128:
  val = 0;
  break;
 }
 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_7107_LINK_LED_CNTL,
    val);
}
