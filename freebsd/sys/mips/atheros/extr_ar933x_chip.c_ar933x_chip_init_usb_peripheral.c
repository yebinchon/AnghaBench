
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR933X_RESET_USBSUS_OVERRIDE ;
 int AR933X_RESET_USB_HOST ;
 int AR933X_RESET_USB_PHY ;
 int DELAY (int) ;
 int ar71xx_device_start (int ) ;
 int ar71xx_device_stop (int ) ;

__attribute__((used)) static void
ar933x_chip_init_usb_peripheral(void)
{
 ar71xx_device_stop(AR933X_RESET_USBSUS_OVERRIDE);
 DELAY(100);

 ar71xx_device_start(AR933X_RESET_USB_HOST);
 DELAY(100);

 ar71xx_device_start(AR933X_RESET_USB_PHY);
 DELAY(100);
}
