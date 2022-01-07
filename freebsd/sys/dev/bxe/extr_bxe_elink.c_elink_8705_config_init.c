
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int dummy; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int shmem_base; int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_OK ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CMU_PLL_BYPASS ;
 int MDIO_PMA_REG_CTRL ;
 int MDIO_PMA_REG_MISC_CTRL ;
 int MDIO_PMA_REG_PHY_IDENTIFIER ;
 int MDIO_WIS_DEVAD ;
 int MDIO_WIS_REG_LASI_CNTL ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int elink_cb_gpio_write (struct bxe_softc*,int ,int ,int ) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_ext_phy_hw_reset (struct bxe_softc*,int ) ;
 int elink_save_spirom_version (struct bxe_softc*,int ,int ,int ) ;
 int elink_wait_reset_complete (struct bxe_softc*,struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static elink_status_t elink_8705_config_init(struct elink_phy *phy,
      struct elink_params *params,
      struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P0(sc, "init 8705\n");

 elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_2,
         MISC_REGISTERS_GPIO_OUTPUT_HIGH, params->port);

 elink_ext_phy_hw_reset(sc, params->port);
 elink_cl45_write(sc, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0xa040);
 elink_wait_reset_complete(sc, phy, params);

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_MISC_CTRL, 0x8288);
 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_PHY_IDENTIFIER, 0x7fbf);
 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_CMU_PLL_BYPASS, 0x0100);
 elink_cl45_write(sc, phy,
    MDIO_WIS_DEVAD, MDIO_WIS_REG_LASI_CNTL, 0x1);

 elink_save_spirom_version(sc, params->port, params->shmem_base, 0);
 return ELINK_STATUS_OK;
}
