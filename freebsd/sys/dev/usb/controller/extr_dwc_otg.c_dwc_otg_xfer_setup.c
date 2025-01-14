
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ usb_mode; } ;
struct usb_xfer {scalar_t__ nframes; int endpointno; int max_packet_count; void** td_start; int max_packet_size; TYPE_3__ flags_int; TYPE_2__* endpoint; } ;
struct usb_setup_params {int hc_max_packet_size; int hc_max_packet_count; int hc_max_frame_size; int* size; TYPE_6__* udev; scalar_t__ buf; scalar_t__ err; struct usb_xfer* curr_xfer; } ;
struct usb_hw_ep_profile {int dummy; } ;
struct dwc_otg_td {int max_packet_count; void* obj_next; void* ep_type; void* ep_no; int max_packet_size; int tt_index; } ;
struct TYPE_13__ {int device_index; TYPE_5__* parent_hs_hub; } ;
struct TYPE_11__ {scalar_t__ bDeviceProtocol; } ;
struct TYPE_12__ {int device_index; TYPE_4__ ddesc; } ;
struct TYPE_9__ {TYPE_1__* edesc; } ;
struct TYPE_8__ {int bmAttributes; } ;


 scalar_t__ UDPROTO_HSHUBMTT ;
 int UE_ADDR ;
 void* UE_CONTROL ;
 int UE_XFERTYPE ;
 struct dwc_otg_td* USB_ADD_BYTES (scalar_t__,int) ;
 scalar_t__ USB_ERR_INVAL ;
 int USB_HOST_ALIGN ;
 scalar_t__ USB_MODE_DEVICE ;
 int dwc_otg_get_hw_ep_profile (TYPE_6__*,struct usb_hw_ep_profile const**,void*) ;
 scalar_t__ dwc_otg_uses_split (TYPE_6__*) ;
 int usbd_transfer_setup_sub (struct usb_setup_params*) ;

__attribute__((used)) static void
dwc_otg_xfer_setup(struct usb_setup_params *parm)
{
 struct usb_xfer *xfer;
 void *last_obj;
 uint32_t ntd;
 uint32_t n;
 uint8_t ep_no;
 uint8_t ep_type;

 xfer = parm->curr_xfer;






 parm->hc_max_packet_size = 0x500;
 parm->hc_max_packet_count = 3;
 parm->hc_max_frame_size = 3 * 0x500;

 usbd_transfer_setup_sub(parm);




 ep_type = (xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE);

 if (ep_type == UE_CONTROL) {

  ntd = xfer->nframes + 1 + 1
      + 1 + 1 ;
 } else {

  ntd = xfer->nframes + 1 ;
 }




 if (parm->err)
  return;




 last_obj = ((void*)0);

 ep_no = xfer->endpointno & UE_ADDR;




 if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
  const struct usb_hw_ep_profile *pf;

  dwc_otg_get_hw_ep_profile(parm->udev, &pf, ep_no);

  if (pf == ((void*)0)) {

   parm->err = USB_ERR_INVAL;
   return;
  }
 }


 parm->size[0] += ((-parm->size[0]) & (USB_HOST_ALIGN - 1));

 for (n = 0; n != ntd; n++) {

  struct dwc_otg_td *td;

  if (parm->buf) {

   td = USB_ADD_BYTES(parm->buf, parm->size[0]);


   if (dwc_otg_uses_split(parm->udev)) {
    if (parm->udev->parent_hs_hub->ddesc.bDeviceProtocol == UDPROTO_HSHUBMTT)
     td->tt_index = parm->udev->device_index;
    else
     td->tt_index = parm->udev->parent_hs_hub->device_index;
   } else {
    td->tt_index = parm->udev->device_index;
   }


   td->max_packet_size = xfer->max_packet_size;
   td->max_packet_count = xfer->max_packet_count;

   if (td->max_packet_count == 0 || td->max_packet_count > 3)
    td->max_packet_count = 1;
   td->ep_no = ep_no;
   td->ep_type = ep_type;
   td->obj_next = last_obj;

   last_obj = td;
  }
  parm->size[0] += sizeof(*td);
 }

 xfer->td_start[0] = last_obj;
}
