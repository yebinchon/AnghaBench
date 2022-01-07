
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct xhci_softc {int dummy; } ;
struct usb_device {int controller_slot_id; int * parent_hub; int bus; } ;


 int DPRINTF (char*,...) ;
 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int XHCI_CMD_LOCK (struct xhci_softc*) ;
 int XHCI_CMD_UNLOCK (struct xhci_softc*) ;
 int XHCI_MAX_ENDPOINTS ;
 scalar_t__ xhci_cmd_stop_ep (struct xhci_softc*,int,int,int) ;

__attribute__((used)) static void
xhci_device_suspend(struct usb_device *udev)
{
 struct xhci_softc *sc = XHCI_BUS2SC(udev->bus);
 uint8_t index;
 uint8_t n;
 usb_error_t err;

 DPRINTF("\n");


 if (udev->parent_hub == ((void*)0))
  return;

 index = udev->controller_slot_id;

 XHCI_CMD_LOCK(sc);



 for (n = 1; n != XHCI_MAX_ENDPOINTS; n++) {
  err = xhci_cmd_stop_ep(sc, 1, n, index);
  if (err != 0) {
   DPRINTF("Failed to suspend endpoint "
       "%u on slot %u (ignored).\n", n, index);
  }
 }

 XHCI_CMD_UNLOCK(sc);
}
