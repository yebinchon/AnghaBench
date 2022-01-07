
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR71XX_RST_RESET ;
 int ATH_READ_REG (int ) ;
 int ATH_WRITE_REG (int ,int) ;

__attribute__((used)) static void
ar71xx_chip_device_stop(uint32_t mask)
{
 uint32_t reg;

 reg = ATH_READ_REG(AR71XX_RST_RESET);
 ATH_WRITE_REG(AR71XX_RST_RESET, reg | mask);
}
