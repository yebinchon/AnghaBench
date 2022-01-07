
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct usb_hw_ep_profile {int dummy; } ;
struct usb_device {int bus; } ;
struct dwc_otg_softc {size_t sc_dev_ep_max; TYPE_1__* sc_hw_ep_profile; } ;
struct TYPE_2__ {struct usb_hw_ep_profile usb; } ;


 struct dwc_otg_softc* DWC_OTG_BUS2SC (int ) ;

__attribute__((used)) static void
dwc_otg_get_hw_ep_profile(struct usb_device *udev,
    const struct usb_hw_ep_profile **ppf, uint8_t ep_addr)
{
 struct dwc_otg_softc *sc;

 sc = DWC_OTG_BUS2SC(udev->bus);

 if (ep_addr < sc->sc_dev_ep_max)
  *ppf = &sc->sc_hw_ep_profile[ep_addr].usb;
 else
  *ppf = ((void*)0);
}
