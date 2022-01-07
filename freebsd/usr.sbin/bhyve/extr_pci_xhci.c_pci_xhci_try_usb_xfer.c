
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct xhci_endp_ctx {int dwEpCtx0; } ;
struct usb_data_xfer {size_t head; int * data; } ;
struct pci_xhci_softc {int dummy; } ;
struct pci_xhci_dev_ep {struct usb_data_xfer* ep_xfer; } ;
struct pci_xhci_dev_emu {int dev_sc; TYPE_1__* dev_ue; } ;
struct TYPE_2__ {int (* ue_data ) (int ,struct usb_data_xfer*,int ,int) ;} ;


 int FIELD_REPLACE (int ,int ,int,int ) ;
 scalar_t__ USB_DATA_GET_ERRCODE (int *) ;
 int USB_DATA_XFER_LOCK (struct usb_data_xfer*) ;
 int USB_DATA_XFER_RESET (struct usb_data_xfer*) ;
 int USB_DATA_XFER_UNLOCK (struct usb_data_xfer*) ;
 int USB_ERR_CANCELLED ;
 scalar_t__ USB_NAK ;
 int USB_XFER_IN ;
 int USB_XFER_OUT ;
 int XHCI_ST_EPCTX_RUNNING ;
 int XHCI_TRB_ERROR_SUCCESS ;
 int pci_xhci_assert_interrupt (struct pci_xhci_softc*) ;
 int pci_xhci_xfer_complete (struct pci_xhci_softc*,struct usb_data_xfer*,int,int,int*) ;
 int stub1 (int ,struct usb_data_xfer*,int ,int) ;

__attribute__((used)) static int
pci_xhci_try_usb_xfer(struct pci_xhci_softc *sc,
    struct pci_xhci_dev_emu *dev, struct pci_xhci_dev_ep *devep,
    struct xhci_endp_ctx *ep_ctx, uint32_t slot, uint32_t epid)
{
 struct usb_data_xfer *xfer;
 int err;
 int do_intr;

 ep_ctx->dwEpCtx0 = FIELD_REPLACE(
      ep_ctx->dwEpCtx0, XHCI_ST_EPCTX_RUNNING, 0x7, 0);

 err = 0;
 do_intr = 0;

 xfer = devep->ep_xfer;
 USB_DATA_XFER_LOCK(xfer);


 if (dev->dev_ue->ue_data != ((void*)0)) {
  err = dev->dev_ue->ue_data(dev->dev_sc, xfer,
              epid & 0x1 ? USB_XFER_IN : USB_XFER_OUT, epid/2);
  if (err == USB_ERR_CANCELLED) {
   if (USB_DATA_GET_ERRCODE(&xfer->data[xfer->head]) ==
       USB_NAK)
    err = XHCI_TRB_ERROR_SUCCESS;
  } else {
   err = pci_xhci_xfer_complete(sc, xfer, slot, epid,
                                &do_intr);
   if (err == XHCI_TRB_ERROR_SUCCESS && do_intr) {
    pci_xhci_assert_interrupt(sc);
   }



   USB_DATA_XFER_RESET(xfer);
  }
 }

 USB_DATA_XFER_UNLOCK(xfer);


 return (err);
}
