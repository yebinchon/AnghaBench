
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_4__ {TYPE_1__* devs; } ;
struct xhci_softc {size_t sc_noslot; TYPE_2__ sc_hw; } ;
struct usb_device {size_t controller_slot_id; int * parent_hub; int bus; } ;
struct TYPE_3__ {int state; } ;


 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int XHCI_CMD_LOCK (struct xhci_softc*) ;
 int XHCI_CMD_UNLOCK (struct xhci_softc*) ;
 int XHCI_ST_DISABLED ;
 int xhci_cmd_disable_slot (struct xhci_softc*,size_t) ;
 int xhci_free_device_ext (struct usb_device*) ;

__attribute__((used)) static void
xhci_device_uninit(struct usb_device *udev)
{
 struct xhci_softc *sc = XHCI_BUS2SC(udev->bus);
 uint8_t index;


 if (udev->parent_hub == ((void*)0))
  return;

 XHCI_CMD_LOCK(sc);

 index = udev->controller_slot_id;

 if (index <= sc->sc_noslot) {
  xhci_cmd_disable_slot(sc, index);
  sc->sc_hw.devs[index].state = XHCI_ST_DISABLED;


  xhci_free_device_ext(udev);
 }

 XHCI_CMD_UNLOCK(sc);
}
