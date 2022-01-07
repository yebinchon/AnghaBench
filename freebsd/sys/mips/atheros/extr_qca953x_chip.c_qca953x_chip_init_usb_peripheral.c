
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ATH_READ_REG (int ) ;
 int DELAY (int) ;
 int QCA953X_RESET_REG_BOOTSTRAP ;
 int QCA953X_RESET_USBSUS_OVERRIDE ;
 int QCA953X_RESET_USB_HOST ;
 int QCA953X_RESET_USB_PHY ;
 int QCA953X_RESET_USB_PHY_ANALOG ;
 int ar71xx_device_start (int ) ;
 int ar71xx_device_stop (int ) ;

__attribute__((used)) static void
qca953x_chip_init_usb_peripheral(void)
{
 uint32_t bootstrap;

 bootstrap = ATH_READ_REG(QCA953X_RESET_REG_BOOTSTRAP);

 ar71xx_device_stop(QCA953X_RESET_USBSUS_OVERRIDE);
 DELAY(1000);

 ar71xx_device_start(QCA953X_RESET_USB_PHY);
 DELAY(1000);

 ar71xx_device_start(QCA953X_RESET_USB_PHY_ANALOG);
 DELAY(1000);

 ar71xx_device_start(QCA953X_RESET_USB_HOST);
 DELAY(1000);
}
