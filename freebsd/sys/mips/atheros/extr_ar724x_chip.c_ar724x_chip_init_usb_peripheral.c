
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR71XX_USB_CTRL_FLADJ ;
 int AR724X_RESET_MODULE_USB_OHCI_DLL ;
 int AR724X_RESET_USB_HOST ;
 int AR724X_RESET_USB_PHY ;
 int ATH_WRITE_REG (int ,int) ;
 int DELAY (int) ;
 int USB_CTRL_FLADJ_A0_SHIFT ;
 int ar71xx_device_start (int) ;
 int ar71xx_device_stop (int) ;
 int ar71xx_soc ;

__attribute__((used)) static void
ar724x_chip_init_usb_peripheral(void)
{

 switch (ar71xx_soc) {
 case 130:
  ar71xx_device_stop(AR724X_RESET_MODULE_USB_OHCI_DLL |
      AR724X_RESET_USB_HOST);
  DELAY(1000);

  ar71xx_device_start(AR724X_RESET_MODULE_USB_OHCI_DLL |
      AR724X_RESET_USB_HOST);
  DELAY(1000);





  ATH_WRITE_REG(AR71XX_USB_CTRL_FLADJ,
      (3 << USB_CTRL_FLADJ_A0_SHIFT));

  break;

 case 129:
 case 128:
  ar71xx_device_start(AR724X_RESET_MODULE_USB_OHCI_DLL);
  DELAY(100);

  ar71xx_device_start(AR724X_RESET_USB_HOST);
  DELAY(100);

  ar71xx_device_start(AR724X_RESET_USB_PHY);
  DELAY(100);

  break;

 default:
  break;
 }
}
