
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct usb_xfer {int nframes; int endpointno; int address; int interval; void** td_start; int max_packet_size; TYPE_2__* endpoint; } ;
struct usb_setup_params {int hc_max_packet_size; int hc_max_packet_count; int hc_max_frame_size; int* size; scalar_t__ buf; TYPE_4__* udev; scalar_t__ err; struct usb_xfer* curr_xfer; } ;
struct usb_hw_ep_profile {int dummy; } ;
struct saf1761_otg_td {int ep_index; int ep_type; int dw1_value; int interval; void* obj_next; scalar_t__ uframe; int max_packet_size; } ;
struct saf1761_otg_softc {int dummy; } ;
struct TYPE_7__ {scalar_t__ usb_mode; } ;
struct TYPE_8__ {int speed; int hs_port_no; int hs_hub_addr; int * parent_hs_hub; TYPE_3__ flags; int bus; } ;
struct TYPE_6__ {TYPE_1__* edesc; } ;
struct TYPE_5__ {int bmAttributes; } ;


 struct saf1761_otg_softc* SAF1761_OTG_BUS2SC (int ) ;
 int SOTG_PTD_DW1_ENABLE_SPLIT ;
 int UE_ADDR ;
 int UE_CONTROL ;
 int UE_INTERRUPT ;
 int UE_XFERTYPE ;
 struct saf1761_otg_td* USB_ADD_BYTES (scalar_t__,int) ;
 scalar_t__ USB_ERR_INVAL ;
 int USB_HOST_ALIGN ;
 scalar_t__ USB_MODE_DEVICE ;


 int saf1761_otg_get_hw_ep_profile (TYPE_4__*,struct usb_hw_ep_profile const**,int) ;
 int usbd_transfer_setup_sub (struct usb_setup_params*) ;

__attribute__((used)) static void
saf1761_otg_xfer_setup(struct usb_setup_params *parm)
{
 struct saf1761_otg_softc *sc;
 struct usb_xfer *xfer;
 void *last_obj;
 uint32_t dw1;
 uint32_t ntd;
 uint32_t n;
 uint8_t ep_no;
 uint8_t ep_type;

 sc = SAF1761_OTG_BUS2SC(parm->udev->bus);
 xfer = parm->curr_xfer;






 parm->hc_max_packet_size = 0x500;
 parm->hc_max_packet_count = 1;
 parm->hc_max_frame_size = 0x500;

 usbd_transfer_setup_sub(parm);




 ep_type = (xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE);

 if (ep_type == UE_CONTROL) {

  ntd = xfer->nframes + 1 + 1 ;

 } else {
  ntd = xfer->nframes + 1 ;
 }




 if (parm->err)
  return;




 last_obj = ((void*)0);

 ep_no = xfer->endpointno & UE_ADDR;




 if (parm->udev->flags.usb_mode == USB_MODE_DEVICE) {
  const struct usb_hw_ep_profile *pf;

  saf1761_otg_get_hw_ep_profile(parm->udev, &pf, ep_no);

  if (pf == ((void*)0)) {

   parm->err = USB_ERR_INVAL;
   return;
  }
 }

 dw1 = (xfer->address << 3) | (ep_type << 12);

 switch (parm->udev->speed) {
 case 129:
 case 128:

  if (parm->udev->parent_hs_hub != ((void*)0)) {
   dw1 |= SOTG_PTD_DW1_ENABLE_SPLIT;
   dw1 |= (parm->udev->hs_port_no << 18);
   dw1 |= (parm->udev->hs_hub_addr << 25);
   if (parm->udev->speed == 128)
    dw1 |= (1 << 17);
  }
  break;
 default:
  break;
 }


 parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));

 for (n = 0; n != ntd; n++) {

  struct saf1761_otg_td *td;

  if (parm->buf) {

   td = USB_ADD_BYTES(parm->buf, parm->size[0]);


   td->max_packet_size = xfer->max_packet_size;
   td->ep_index = ep_no;
   td->ep_type = ep_type;
   td->dw1_value = dw1;
   td->uframe = 0;

   if (ep_type == UE_INTERRUPT) {
    if (xfer->interval > 32)
     td->interval = (32 / 2) << 3;
    else
     td->interval = (xfer->interval / 2) << 3;
   } else {
    td->interval = 0;
   }
   td->obj_next = last_obj;

   last_obj = td;
  }
  parm->size[0] += sizeof(*td);
 }

 xfer->td_start[0] = last_obj;
}
