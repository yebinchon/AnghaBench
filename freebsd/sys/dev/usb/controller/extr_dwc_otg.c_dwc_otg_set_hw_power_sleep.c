
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct dwc_otg_softc {int dummy; } ;


 struct dwc_otg_softc* DWC_OTG_BUS2SC (struct usb_bus*) ;



 int dwc_otg_resume (struct dwc_otg_softc*) ;
 int dwc_otg_suspend (struct dwc_otg_softc*) ;
 int dwc_otg_uninit (struct dwc_otg_softc*) ;

__attribute__((used)) static void
dwc_otg_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct dwc_otg_softc *sc = DWC_OTG_BUS2SC(bus);

 switch (state) {
 case 128:
  dwc_otg_suspend(sc);
  break;
 case 129:
  dwc_otg_uninit(sc);
  break;
 case 130:
  dwc_otg_resume(sc);
  break;
 default:
  break;
 }
}
