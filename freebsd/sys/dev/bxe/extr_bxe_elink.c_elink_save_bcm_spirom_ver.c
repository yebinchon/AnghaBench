
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct elink_phy {int ver_addr; } ;
struct bxe_softc {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_ROM_VER1 ;
 int MDIO_PMA_REG_ROM_VER2 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_save_spirom_version (struct bxe_softc*,int ,int ,int ) ;

__attribute__((used)) static void elink_save_bcm_spirom_ver(struct bxe_softc *sc,
          struct elink_phy *phy,
          uint8_t port)
{
 uint16_t fw_ver1, fw_ver2;

 elink_cl45_read(sc, phy, MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER1, &fw_ver1);
 elink_cl45_read(sc, phy, MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER2, &fw_ver2);
 elink_save_spirom_version(sc, port, (uint32_t)(fw_ver1<<16 | fw_ver2),
      phy->ver_addr);
}
