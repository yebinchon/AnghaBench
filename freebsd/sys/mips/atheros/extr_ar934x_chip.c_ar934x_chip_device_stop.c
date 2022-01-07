
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR934X_RESET_REG_RESET_MODULE ;
 int ATH_READ_REG (int ) ;
 int ATH_WRITE_REG (int ,int) ;

__attribute__((used)) static void
ar934x_chip_device_stop(uint32_t mask)
{
 uint32_t reg;

 reg = ATH_READ_REG(AR934X_RESET_REG_RESET_MODULE);
 ATH_WRITE_REG(AR934X_RESET_REG_RESET_MODULE, reg | mask);
}
