
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR5312_GPIO_CR ;
 int AR5312_GPIO_DI ;
 int AR5312_GPIO_DO ;
 int AR5312_GPIO_PINS ;
 int AR5312_SYSREG_WDOG_CTL ;
 int AR5312_SYSREG_WDOG_TIMER ;
 int AR5312_UART0_BASE ;
 int MIPS_PHYS_TO_KSEG1 (int ) ;
 int u_ar531x_gpio_cr ;
 int u_ar531x_gpio_di ;
 int u_ar531x_gpio_do ;
 int u_ar531x_gpio_pins ;
 int u_ar531x_uart_addr ;
 int u_ar531x_wdog_ctl ;
 int u_ar531x_wdog_timer ;

__attribute__((used)) static void
ar5312_chip_soc_init(void)
{

 u_ar531x_uart_addr = MIPS_PHYS_TO_KSEG1(AR5312_UART0_BASE);

 u_ar531x_gpio_di = AR5312_GPIO_DI;
 u_ar531x_gpio_do = AR5312_GPIO_DO;
 u_ar531x_gpio_cr = AR5312_GPIO_CR;
 u_ar531x_gpio_pins = AR5312_GPIO_PINS;

 u_ar531x_wdog_ctl = AR5312_SYSREG_WDOG_CTL;
 u_ar531x_wdog_timer = AR5312_SYSREG_WDOG_TIMER;

}
