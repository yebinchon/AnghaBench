
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHVGPIO_PAD_CFG0 ;

__attribute__((used)) static inline int
chvgpio_pad_cfg0_offset(int pin)
{
 return (CHVGPIO_PAD_CFG0 + 1024 * (pin / 15) + 8 * (pin % 15));
}
