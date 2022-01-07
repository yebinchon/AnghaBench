
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_hw_ep_profile {int dummy; } ;
struct usb_device {int bus; } ;
struct musbotg_softc {scalar_t__ sc_ep_max; struct usb_hw_ep_profile* sc_hw_ep_profile; } ;


 struct musbotg_softc* MUSBOTG_BUS2SC (int ) ;
 struct usb_hw_ep_profile* musbotg_ep_profile ;

__attribute__((used)) static void
musbotg_get_hw_ep_profile(struct usb_device *udev,
    const struct usb_hw_ep_profile **ppf, uint8_t ep_addr)
{
 struct musbotg_softc *sc;

 sc = MUSBOTG_BUS2SC(udev->bus);

 if (ep_addr == 0) {

  *ppf = musbotg_ep_profile;
 } else if (ep_addr <= sc->sc_ep_max) {

  *ppf = sc->sc_hw_ep_profile + ep_addr;
 } else {
  *ppf = ((void*)0);
 }
}
