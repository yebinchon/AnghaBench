
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR934X_BOOTSTRAP_USB_MODE_DEVICE ;
 int AR934X_RESET_REG_BOOTSTRAP ;
 int AR934X_RESET_USBSUS_OVERRIDE ;
 int AR934X_RESET_USB_HOST ;
 int AR934X_RESET_USB_PHY ;
 int AR934X_RESET_USB_PHY_ANALOG ;
 int ATH_READ_REG (int ) ;
 int DELAY (int) ;
 int ar71xx_device_start (int ) ;
 int ar71xx_device_stop (int ) ;

__attribute__((used)) static void
ar934x_chip_init_usb_peripheral(void)
{
 uint32_t reg;

 reg = ATH_READ_REG(AR934X_RESET_REG_BOOTSTRAP);
 if (reg & AR934X_BOOTSTRAP_USB_MODE_DEVICE)
  return;

 ar71xx_device_stop(AR934X_RESET_USBSUS_OVERRIDE);
 DELAY(100);

 ar71xx_device_start(AR934X_RESET_USB_PHY);
 DELAY(100);

 ar71xx_device_start(AR934X_RESET_USB_PHY_ANALOG);
 DELAY(100);

 ar71xx_device_start(AR934X_RESET_USB_HOST);
 DELAY(100);
}
