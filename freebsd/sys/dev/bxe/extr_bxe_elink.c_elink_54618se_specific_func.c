
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;



 int MDIO_REG_GPHY_SHADOW ;
 int MDIO_REG_GPHY_SHADOW_LED_SEL2 ;
 int MDIO_REG_GPHY_SHADOW_WR_ENA ;
 int MDIO_REG_INTR_MASK ;
 int MDIO_REG_INTR_MASK_LINK_STATUS ;
 int elink_cl22_read (struct bxe_softc*,struct elink_phy*,int ,int*) ;
 int elink_cl22_write (struct bxe_softc*,struct elink_phy*,int ,int) ;

__attribute__((used)) static void elink_54618se_specific_func(struct elink_phy *phy,
     struct elink_params *params,
     uint32_t action)
{
 struct bxe_softc *sc = params->sc;
 uint16_t temp;
 switch (action) {
 case 128:


  elink_cl22_write(sc, phy,
     MDIO_REG_GPHY_SHADOW,
     MDIO_REG_GPHY_SHADOW_LED_SEL2);
  elink_cl22_read(sc, phy,
    MDIO_REG_GPHY_SHADOW,
    &temp);
  temp &= ~(0xf << 4);
  temp |= (0x6 << 4);
  elink_cl22_write(sc, phy,
     MDIO_REG_GPHY_SHADOW,
     MDIO_REG_GPHY_SHADOW_WR_ENA | temp);

  elink_cl22_write(sc, phy,
     MDIO_REG_INTR_MASK,
     ~MDIO_REG_INTR_MASK_LINK_STATUS);
  break;
 }
}
