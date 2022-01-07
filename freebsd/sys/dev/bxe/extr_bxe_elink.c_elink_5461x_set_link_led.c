
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;




 int MDIO_REG_GPHY_SHADOW ;
 int MDIO_REG_GPHY_SHADOW_LED_SEL1 ;
 int MDIO_REG_GPHY_SHADOW_WR_ENA ;
 int elink_cl22_read (struct bxe_softc*,struct elink_phy*,int ,int*) ;
 int elink_cl22_write (struct bxe_softc*,struct elink_phy*,int ,int) ;

__attribute__((used)) static void elink_5461x_set_link_led(struct elink_phy *phy,
           struct elink_params *params, uint8_t mode)
{
 struct bxe_softc *sc = params->sc;
 uint16_t temp;

 elink_cl22_write(sc, phy,
  MDIO_REG_GPHY_SHADOW,
  MDIO_REG_GPHY_SHADOW_LED_SEL1);
 elink_cl22_read(sc, phy,
  MDIO_REG_GPHY_SHADOW,
  &temp);
 temp &= 0xff00;

 ELINK_DEBUG_P1(sc, "54618x set link led (mode=%x)\n", mode);
 switch (mode) {
 case 131:
 case 130:
  temp |= 0x00ee;
  break;
 case 128:
  temp |= 0x0001;
  break;
 case 129:
  temp |= 0x00ff;
  break;
 default:
  break;
 }
 elink_cl22_write(sc, phy,
  MDIO_REG_GPHY_SHADOW,
  MDIO_REG_GPHY_SHADOW_WR_ENA | temp);
 return;
}
