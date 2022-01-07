
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int ELINK_STATUS_OK ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_PHY_IDENTIFIER ;
 int MDIO_PMA_REG_ROM_VER2 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static elink_status_t elink_8727_set_limiting_mode(struct bxe_softc *sc,
     struct elink_phy *phy,
     uint16_t edc_mode)
{
 uint16_t phy_identifier;
 uint16_t rom_ver2_val;
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_PHY_IDENTIFIER,
   &phy_identifier);

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_PHY_IDENTIFIER,
    (phy_identifier & ~(1<<9)));

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER2,
   &rom_ver2_val);

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_ROM_VER2,
    (rom_ver2_val & 0xff00) | (edc_mode & 0x00ff));

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_PHY_IDENTIFIER,
    (phy_identifier | (1<<9)));

 return ELINK_STATUS_OK;
}
