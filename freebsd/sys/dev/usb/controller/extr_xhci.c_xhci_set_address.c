
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int parent; } ;
struct TYPE_4__ {struct xhci_hw_dev* devs; } ;
struct xhci_softc {TYPE_2__ sc_bus; int (* sc_port_route ) (int ,int ,int ) ;int * sc_cmd_result; TYPE_1__ sc_hw; } ;
struct xhci_hw_dev {int state; int device_pc; int input_pc; } ;
struct xhci_endpoint_ext {int trb_halted; int trb_running; } ;
struct TYPE_6__ {int dwSctx3; } ;
struct xhci_dev_ctx {TYPE_3__ ctx_slot; } ;
struct usb_page_search {struct xhci_dev_ctx* buffer; int physaddr; } ;
struct usb_device {size_t controller_slot_id; int address; int ctrl_ep_desc; int bus; int speed; int * parent_hub; } ;
struct mtx {int dummy; } ;


 int DPRINTF (char*,...) ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_EP_MODE_DEFAULT ;
 int USB_ERR_INVAL ;
 int USB_ERR_IOERROR ;



 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int XHCI_CMD_LOCK (struct xhci_softc*) ;
 int XHCI_CMD_UNLOCK (struct xhci_softc*) ;
 int XHCI_SCTX_3_DEV_ADDR_GET (int ) ;
 int XHCI_ST_ADDRESSED ;


 int XHCI_TRB_2_ERROR_GET (int ) ;
 int XHCI_TRB_ERROR_PARAMETER ;
 int le32toh (int ) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int stub1 (int ,int ,int ) ;
 int usb_pc_cpu_invalidate (int *) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;
 int xhci_cmd_set_address (struct xhci_softc*,int ,int,size_t) ;
 int xhci_configure_device (struct usb_device*) ;
 int xhci_configure_endpoint (struct usb_device*,int *,struct xhci_endpoint_ext*,int ,int,int,int ,int,int,int ) ;
 int xhci_configure_mask (struct usb_device*,int,int ) ;
 int xhci_ctx_get_le32 (struct xhci_softc*,int *) ;
 struct xhci_endpoint_ext* xhci_get_endpoint_ext (struct usb_device*,int *) ;

__attribute__((used)) static usb_error_t
xhci_set_address(struct usb_device *udev, struct mtx *mtx, uint16_t address)
{
 struct usb_page_search buf_inp;
 struct usb_page_search buf_dev;
 struct xhci_softc *sc = XHCI_BUS2SC(udev->bus);
 struct xhci_hw_dev *hdev;
 struct xhci_dev_ctx *pdev;
 struct xhci_endpoint_ext *pepext;
 uint32_t temp;
 uint16_t mps;
 usb_error_t err;
 uint8_t index;


 if (udev->parent_hub == ((void*)0))
  return (USB_ERR_INVAL);

 index = udev->controller_slot_id;

 hdev = &sc->sc_hw.devs[index];

 if (mtx != ((void*)0))
  mtx_unlock(mtx);

 XHCI_CMD_LOCK(sc);

 switch (hdev->state) {
 case 129:
 case 128:

  hdev->state = 128;


  xhci_configure_mask(udev, 3, 0);


  err = xhci_configure_device(udev);

  if (err != 0) {
   DPRINTF("Could not configure device\n");
   break;
  }


  switch (udev->speed) {
  case 130:
  case 132:
   mps = 8;
   break;
  case 131:
   mps = 64;
   break;
  default:
   mps = 512;
   break;
  }

  pepext = xhci_get_endpoint_ext(udev,
      &udev->ctrl_ep_desc);


  USB_BUS_LOCK(udev->bus);
  pepext->trb_halted = 1;
  pepext->trb_running = 0;
  USB_BUS_UNLOCK(udev->bus);

  err = xhci_configure_endpoint(udev,
      &udev->ctrl_ep_desc, pepext,
      0, 1, 1, 0, mps, mps, USB_EP_MODE_DEFAULT);

  if (err != 0) {
   DPRINTF("Could not configure default endpoint\n");
   break;
  }


  usbd_get_page(&hdev->input_pc, 0, &buf_inp);

  err = xhci_cmd_set_address(sc, buf_inp.physaddr,
      (address == 0), index);

  if (err != 0) {
   temp = le32toh(sc->sc_cmd_result[0]);
   if (address == 0 && sc->sc_port_route != ((void*)0) &&
       XHCI_TRB_2_ERROR_GET(temp) ==
       XHCI_TRB_ERROR_PARAMETER) {


    sc->sc_port_route(sc->sc_bus.parent, 0, ~0);
   }
   DPRINTF("Could not set address "
       "for slot %u.\n", index);
   if (address != 0)
    break;
  }



  usbd_get_page(&hdev->device_pc, 0, &buf_dev);
  pdev = buf_dev.buffer;
  usb_pc_cpu_invalidate(&hdev->device_pc);

  temp = xhci_ctx_get_le32(sc, &pdev->ctx_slot.dwSctx3);
  udev->address = XHCI_SCTX_3_DEV_ADDR_GET(temp);



  if (address != 0)
   hdev->state = XHCI_ST_ADDRESSED;
  else
   hdev->state = 129;
  break;

 default:
  DPRINTF("Wrong state for set address.\n");
  err = USB_ERR_IOERROR;
  break;
 }
 XHCI_CMD_UNLOCK(sc);

 if (mtx != ((void*)0))
  mtx_lock(mtx);

 return (err);
}
