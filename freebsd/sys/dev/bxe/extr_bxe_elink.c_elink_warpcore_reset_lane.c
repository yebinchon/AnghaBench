
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_DIGITAL5_MISC6 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_warpcore_reset_lane(struct bxe_softc *sc,
          struct elink_phy *phy,
          uint8_t reset)
{
 uint16_t val;

 elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_DIGITAL5_MISC6, &val);
 if (reset)
  val |= 0xC000;
 else
  val &= 0x3FFF;
 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_DIGITAL5_MISC6, val);
 elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_DIGITAL5_MISC6, &val);
}
