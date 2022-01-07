
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ar71xx_soc ;

__attribute__((used)) static int
ar71xx_gpio_oe_is_high(void)
{
 switch (ar71xx_soc) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return 0;
 default:
  return 1;
 }
}
