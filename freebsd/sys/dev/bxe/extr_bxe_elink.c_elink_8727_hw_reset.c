
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int MISC_REGISTERS_GPIO_1 ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int NIG_REG_PORT_SWAP ;
 int NIG_REG_STRAP_OVERRIDE ;
 scalar_t__ REG_RD (struct bxe_softc*,int ) ;
 int elink_cb_gpio_write (struct bxe_softc*,int ,int ,int) ;

__attribute__((used)) static void elink_8727_hw_reset(struct elink_phy *phy,
    struct elink_params *params) {
 uint32_t swap_val, swap_override;
 uint8_t port;



 struct bxe_softc *sc = params->sc;
 swap_val = REG_RD(sc, NIG_REG_PORT_SWAP);
 swap_override = REG_RD(sc, NIG_REG_STRAP_OVERRIDE);
 port = (swap_val && swap_override) ^ 1;
 elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_LOW, port);
}
