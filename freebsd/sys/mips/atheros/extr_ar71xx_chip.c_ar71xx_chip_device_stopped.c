
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR71XX_RST_RESET ;
 int ATH_READ_REG (int ) ;

__attribute__((used)) static int
ar71xx_chip_device_stopped(uint32_t mask)
{
 uint32_t reg;

 reg = ATH_READ_REG(AR71XX_RST_RESET);
 return ((reg & mask) == mask);
}
