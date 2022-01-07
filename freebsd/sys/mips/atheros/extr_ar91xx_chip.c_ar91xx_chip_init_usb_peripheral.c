
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR91XX_RST_RESET_MODULE_AMBA2WMAC ;
 int AR91XX_RST_RESET_MODULE_USBSUS_OVERRIDE ;
 int DELAY (int) ;
 int RST_RESET_USB_HOST ;
 int RST_RESET_USB_PHY ;
 int ar71xx_device_start (int ) ;
 int ar71xx_device_stop (int ) ;

__attribute__((used)) static void
ar91xx_chip_init_usb_peripheral(void)
{

 ar71xx_device_stop(AR91XX_RST_RESET_MODULE_USBSUS_OVERRIDE);
 DELAY(100);

 ar71xx_device_start(RST_RESET_USB_HOST);
 DELAY(100);

 ar71xx_device_start(RST_RESET_USB_PHY);
 DELAY(100);


 ar71xx_device_stop(AR91XX_RST_RESET_MODULE_AMBA2WMAC);
 DELAY(1000);

 ar71xx_device_start(AR91XX_RST_RESET_MODULE_AMBA2WMAC);
 DELAY(1000);
}
