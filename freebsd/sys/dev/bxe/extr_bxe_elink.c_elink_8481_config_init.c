
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int dummy; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CTRL ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int elink_848xx_cmn_config_init (struct elink_phy*,struct elink_params*,struct elink_vars*) ;
 int elink_cb_gpio_write (struct bxe_softc*,int ,int ,int ) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_ext_phy_hw_reset (struct bxe_softc*,int ) ;
 int elink_wait_reset_complete (struct bxe_softc*,struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static elink_status_t elink_8481_config_init(struct elink_phy *phy,
      struct elink_params *params,
      struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;

 elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_2,
         MISC_REGISTERS_GPIO_OUTPUT_HIGH, params->port);


 elink_ext_phy_hw_reset(sc, params->port);
 elink_wait_reset_complete(sc, phy, params);

 elink_cl45_write(sc, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1<<15);
 return elink_848xx_cmn_config_init(phy, params, vars);
}
