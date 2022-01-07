
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef size_t uint8_t ;
struct TYPE_4__ {TYPE_1__* devs; } ;
struct xhci_softc {TYPE_2__ sc_hw; } ;
struct usb_page_search {int physaddr; } ;
struct usb_device {size_t controller_slot_id; int * parent_hub; int bus; } ;
struct TYPE_3__ {int input_pc; int context_num; int state; scalar_t__ nports; int tt; } ;


 int DPRINTF (char*,...) ;



 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int XHCI_CMD_LOCK (struct xhci_softc*) ;
 int XHCI_CMD_UNLOCK (struct xhci_softc*) ;
 int XHCI_ST_ADDRESSED ;
 int XHCI_ST_CONFIGURED ;
 int XHCI_ST_DEFAULT ;
 scalar_t__ uhub_query_info (struct usb_device*,scalar_t__*,int *) ;
 int usb_get_device_state (struct usb_device*) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;
 scalar_t__ xhci_cmd_configure_ep (struct xhci_softc*,int ,int,size_t) ;
 scalar_t__ xhci_cmd_evaluate_ctx (struct xhci_softc*,int ,size_t) ;
 scalar_t__ xhci_cmd_reset_dev (struct xhci_softc*,size_t) ;
 scalar_t__ xhci_configure_device (struct usb_device*) ;
 int xhci_configure_mask (struct usb_device*,int,int ) ;

__attribute__((used)) static void
xhci_device_state_change(struct usb_device *udev)
{
 struct xhci_softc *sc = XHCI_BUS2SC(udev->bus);
 struct usb_page_search buf_inp;
 usb_error_t err;
 uint8_t index;


 if (udev->parent_hub == ((void*)0))
  return;

 index = udev->controller_slot_id;

 DPRINTF("\n");

 if (usb_get_device_state(udev) == 129) {
  err = uhub_query_info(udev, &sc->sc_hw.devs[index].nports,
      &sc->sc_hw.devs[index].tt);
  if (err != 0)
   sc->sc_hw.devs[index].nports = 0;
 }

 XHCI_CMD_LOCK(sc);

 switch (usb_get_device_state(udev)) {
 case 128:
  if (sc->sc_hw.devs[index].state == XHCI_ST_DEFAULT)
   break;


  sc->sc_hw.devs[index].state = XHCI_ST_DEFAULT;


  sc->sc_hw.devs[index].context_num = 0;

  err = xhci_cmd_reset_dev(sc, index);

  if (err != 0) {
   DPRINTF("Device reset failed "
       "for slot %u.\n", index);
  }
  break;

 case 130:
  if (sc->sc_hw.devs[index].state == XHCI_ST_ADDRESSED)
   break;

  sc->sc_hw.devs[index].state = XHCI_ST_ADDRESSED;


  xhci_configure_mask(udev, 1, 0);


  err = xhci_cmd_configure_ep(sc, 0, 1, index);

  if (err) {
   DPRINTF("Failed to deconfigure "
       "slot %u.\n", index);
  }
  break;

 case 129:
  if (sc->sc_hw.devs[index].state == XHCI_ST_CONFIGURED)
   break;


  sc->sc_hw.devs[index].state = XHCI_ST_CONFIGURED;


  sc->sc_hw.devs[index].context_num = 0;

  usbd_get_page(&sc->sc_hw.devs[index].input_pc, 0, &buf_inp);

  xhci_configure_mask(udev, 3, 0);

  err = xhci_configure_device(udev);
  if (err != 0) {
   DPRINTF("Could not configure device "
       "at slot %u.\n", index);
  }

  err = xhci_cmd_evaluate_ctx(sc, buf_inp.physaddr, index);
  if (err != 0) {
   DPRINTF("Could not evaluate device "
       "context at slot %u.\n", index);
  }
  break;

 default:
  break;
 }
 XHCI_CMD_UNLOCK(sc);
}
