
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int DELAY (int) ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_GEN_CTRL ;
 int MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET ;
 int MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP ;
 int MDIO_PMA_REG_MISC_CTRL1 ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_save_bcm_spirom_ver (struct bxe_softc*,struct elink_phy*,int ) ;

__attribute__((used)) static void elink_8726_external_rom_boot(struct elink_phy *phy,
      struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;

 DELAY(1000 * 100);


 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_GEN_CTRL, 0x018B);


 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_GEN_CTRL,
    MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET);

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_MISC_CTRL1, 0x0001);

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_GEN_CTRL,
    MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP);


 DELAY(1000 * 150);


 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_MISC_CTRL1, 0x0000);

 DELAY(1000 * 200);
 elink_save_bcm_spirom_ver(sc, phy, params->port);
}
