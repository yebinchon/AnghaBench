
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 int DELAY (int) ;
 int MISC_REGISTERS_GPIO_1 ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int elink_cb_gpio_write (struct bxe_softc*,int ,int ,int ) ;

void elink_ext_phy_hw_reset(struct bxe_softc *sc, uint8_t port)
{
 elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_LOW, port);
 DELAY(1000 * 1);
 elink_cb_gpio_write(sc, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_HIGH, port);
}
