
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_device {int bus; } ;
struct musbotg_softc {scalar_t__ sc_mode; } ;


 scalar_t__ MUSB2_HOST_MODE ;
 struct musbotg_softc* MUSBOTG_BUS2SC (int ) ;

__attribute__((used)) static void
musbotg_get_dma_delay(struct usb_device *udev, uint32_t *pus)
{
 struct musbotg_softc *sc = MUSBOTG_BUS2SC(udev->bus);

 if (sc->sc_mode == MUSB2_HOST_MODE)
         *pus = 2000;
 else
  *pus = 0;
}
