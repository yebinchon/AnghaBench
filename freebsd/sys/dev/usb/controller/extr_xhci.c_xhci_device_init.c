
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef size_t uint8_t ;
struct TYPE_3__ {TYPE_2__* devs; } ;
struct xhci_softc {size_t sc_noslot; TYPE_1__ sc_hw; } ;
struct usb_device {size_t controller_slot_id; int * parent_hub; int bus; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 int DPRINTF (char*,size_t) ;
 scalar_t__ USB_ERR_BAD_ADDRESS ;
 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int XHCI_CMD_LOCK (struct xhci_softc*) ;
 int XHCI_CMD_UNLOCK (struct xhci_softc*) ;
 scalar_t__ XHCI_ST_DISABLED ;
 scalar_t__ XHCI_ST_ENABLED ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ xhci_alloc_device_ext (struct usb_device*) ;
 scalar_t__ xhci_cmd_enable_slot (struct xhci_softc*,size_t*) ;
 scalar_t__ xhci_set_address (struct usb_device*,int *,int ) ;

__attribute__((used)) static usb_error_t
xhci_device_init(struct usb_device *udev)
{
 struct xhci_softc *sc = XHCI_BUS2SC(udev->bus);
 usb_error_t err;
 uint8_t temp;


 if (udev->parent_hub == ((void*)0))
  return (0);

 XHCI_CMD_LOCK(sc);



 udev->controller_slot_id = sc->sc_noslot + 1;



 err = xhci_cmd_enable_slot(sc, &temp);

 if (err) {
  XHCI_CMD_UNLOCK(sc);
  return (err);
 }

 if (temp > sc->sc_noslot) {
  XHCI_CMD_UNLOCK(sc);
  return (USB_ERR_BAD_ADDRESS);
 }

 if (sc->sc_hw.devs[temp].state != XHCI_ST_DISABLED) {
  DPRINTF("slot %u already allocated.\n", temp);
  XHCI_CMD_UNLOCK(sc);
  return (USB_ERR_BAD_ADDRESS);
 }



 udev->controller_slot_id = temp;



 memset(&sc->sc_hw.devs[temp], 0, sizeof(sc->sc_hw.devs[0]));



 sc->sc_hw.devs[temp].state = XHCI_ST_ENABLED;

 err = xhci_alloc_device_ext(udev);

 XHCI_CMD_UNLOCK(sc);



 if (err == 0)
  err = xhci_set_address(udev, ((void*)0), 0);

 return (err);
}
