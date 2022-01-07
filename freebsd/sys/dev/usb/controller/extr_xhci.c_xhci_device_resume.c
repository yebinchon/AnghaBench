
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct xhci_softc {int dummy; } ;
struct usb_device {scalar_t__ controller_slot_id; int bus; int * parent_hub; } ;


 int DPRINTF (char*) ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int XHCI_CMD_LOCK (struct xhci_softc*) ;
 int XHCI_CMD_UNLOCK (struct xhci_softc*) ;
 scalar_t__ XHCI_DB_SID_SET (scalar_t__) ;
 int XHCI_DOORBELL (scalar_t__) ;
 scalar_t__ XHCI_MAX_ENDPOINTS ;
 scalar_t__ XHCI_MAX_STREAMS ;
 int XWRITE4 (struct xhci_softc*,int ,int ,scalar_t__) ;
 int door ;

__attribute__((used)) static void
xhci_device_resume(struct usb_device *udev)
{
 struct xhci_softc *sc = XHCI_BUS2SC(udev->bus);
 uint8_t index;
 uint8_t n;
 uint8_t p;

 DPRINTF("\n");


 if (udev->parent_hub == ((void*)0))
  return;

 index = udev->controller_slot_id;

 XHCI_CMD_LOCK(sc);



 USB_BUS_LOCK(udev->bus);

 for (n = 1; n != XHCI_MAX_ENDPOINTS; n++) {
  for (p = 0; p != XHCI_MAX_STREAMS; p++) {
   XWRITE4(sc, door, XHCI_DOORBELL(index),
       n | XHCI_DB_SID_SET(p));
  }
 }

 USB_BUS_UNLOCK(udev->bus);

 XHCI_CMD_UNLOCK(sc);
}
