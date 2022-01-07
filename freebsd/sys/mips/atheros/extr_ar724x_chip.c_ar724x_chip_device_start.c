
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR724X_RESET_MODULE_USB_OHCI_DLL ;
 int AR724X_RESET_REG_RESET_MODULE ;
 int ATH_READ_REG (int ) ;
 int ATH_WRITE_REG (int ,int) ;

__attribute__((used)) static void
ar724x_chip_device_start(uint32_t mask)
{
 uint32_t mask_inv, reg;

 mask_inv = mask & AR724X_RESET_MODULE_USB_OHCI_DLL;
 reg = ATH_READ_REG(AR724X_RESET_REG_RESET_MODULE);
 reg &= ~mask;
 reg |= mask_inv;
 ATH_WRITE_REG(AR724X_RESET_REG_RESET_MODULE, reg);
}
