
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_super_softc {int sc_flag; } ;
typedef enum usb_hc_mode { ____Placeholder_usb_hc_mode } usb_hc_mode ;


 int UCOM_FLAG_DEVICE_MODE ;


void
ucom_set_usb_mode(struct ucom_super_softc *ssc, enum usb_hc_mode usb_mode)
{

 switch (usb_mode) {
 case 128:
  ssc->sc_flag |= UCOM_FLAG_DEVICE_MODE;
  break;
 default:
  ssc->sc_flag &= ~UCOM_FLAG_DEVICE_MODE;
  break;
 }
}
