
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct elink_phy {int dummy; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int MISC_REGISTERS_GPIO_1 ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int SC_PATH (struct bxe_softc*) ;
 int elink_cb_gpio_write (struct bxe_softc*,int ,int ,int ) ;

__attribute__((used)) static void elink_common_ext_link_reset(struct elink_phy *phy,
     struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 uint8_t gpio_port;

 if (CHIP_IS_E2(sc))
  gpio_port = SC_PATH(sc);
 else
  gpio_port = params->port;
 elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_LOW,
         gpio_port);
 elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_2,
         MISC_REGISTERS_GPIO_OUTPUT_LOW,
         gpio_port);
 ELINK_DEBUG_P0(sc, "reset external PHY\n");
}
