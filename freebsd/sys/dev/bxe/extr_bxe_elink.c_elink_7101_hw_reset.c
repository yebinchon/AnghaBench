
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {int port; int sc; } ;


 int MISC_REGISTERS_GPIO_1 ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int elink_cb_gpio_write (int ,int ,int ,int ) ;

__attribute__((used)) static void elink_7101_hw_reset(struct elink_phy *phy,
    struct elink_params *params) {

 elink_cb_gpio_write(params->sc, MISC_REGISTERS_GPIO_2,
         MISC_REGISTERS_GPIO_OUTPUT_LOW, params->port);

 elink_cb_gpio_write(params->sc, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_LOW, params->port);
}
