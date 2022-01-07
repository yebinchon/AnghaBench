
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct usb_interface_descriptor {scalar_t__ bAlternateSetting; } ;
struct usb_hw_ep_scratch_sub {int max_frame_size; int hw_endpoint_in; int hw_endpoint_out; int needs_in; int needs_out; int needs_ep_type; } ;
struct usb_hw_ep_scratch {int* bmInAlloc; int* bmOutAlloc; int udev; TYPE_1__* methods; struct usb_hw_ep_scratch_sub* ep_max; int cd; struct usb_hw_ep_scratch_sub* ep; } ;
struct usb_hw_ep_profile {int max_in_frame_size; int max_out_frame_size; } ;
struct usb_endpoint_descriptor {int bmAttributes; int bEndpointAddress; int wMaxPacketSize; } ;
struct usb_descriptor {scalar_t__ bDescriptorType; int bLength; } ;
typedef enum usb_dev_speed { ____Placeholder_usb_dev_speed } usb_dev_speed ;
struct TYPE_2__ {int (* get_hw_ep_profile ) (int ,struct usb_hw_ep_profile const**,int) ;} ;


 int DPRINTFN (int ,char*,int) ;
 scalar_t__ UDESC_ENDPOINT ;
 scalar_t__ UDESC_INTERFACE ;
 int UE_ADDR ;
 int UE_CONTROL ;
 int UE_DIR_IN ;
 int UE_XFERTYPE ;
 int UGETW (int ) ;
 int USB_EP_MAX ;
 int USB_SPEED_HIGH ;
 int stub1 (int ,struct usb_hw_ep_profile const**,int) ;
 struct usb_descriptor* usb_desc_foreach (int ,struct usb_descriptor*) ;
 int usbd_get_speed (int ) ;

__attribute__((used)) static uint8_t
usb_hw_ep_get_needs(struct usb_hw_ep_scratch *ues,
    uint8_t ep_type, uint8_t is_complete)
{
 const struct usb_hw_ep_profile *pf;
 struct usb_hw_ep_scratch_sub *ep_iface;
 struct usb_hw_ep_scratch_sub *ep_curr;
 struct usb_hw_ep_scratch_sub *ep_max;
 struct usb_hw_ep_scratch_sub *ep_end;
 struct usb_descriptor *desc;
 struct usb_interface_descriptor *id;
 struct usb_endpoint_descriptor *ed;
 enum usb_dev_speed speed;
 uint16_t wMaxPacketSize;
 uint16_t temp;
 uint8_t ep_no;

 ep_iface = ues->ep_max;
 ep_curr = ues->ep_max;
 ep_end = ues->ep + USB_EP_MAX;
 ep_max = ues->ep_max;
 desc = ((void*)0);
 speed = usbd_get_speed(ues->udev);

repeat:

 while ((desc = usb_desc_foreach(ues->cd, desc))) {

  if ((desc->bDescriptorType == UDESC_INTERFACE) &&
      (desc->bLength >= sizeof(*id))) {

   id = (void *)desc;

   if (id->bAlternateSetting == 0) {

    ep_iface = ep_max;
   } else {

    ep_curr = ep_iface;
   }
  }
  if ((desc->bDescriptorType == UDESC_ENDPOINT) &&
      (desc->bLength >= sizeof(*ed))) {

   ed = (void *)desc;

   goto handle_endpoint_desc;
  }
 }
 ues->ep_max = ep_max;
 return (0);

handle_endpoint_desc:
 temp = (ed->bmAttributes & UE_XFERTYPE);

 if (temp == ep_type) {

  if (ep_curr == ep_end) {

   return (1);
  }
  wMaxPacketSize = UGETW(ed->wMaxPacketSize);
  if ((wMaxPacketSize & 0xF800) &&
      (speed == USB_SPEED_HIGH)) {

   temp = (wMaxPacketSize >> 11) & 3;
   wMaxPacketSize &= 0x7FF;
   if (temp == 1) {
    wMaxPacketSize *= 2;
   } else {
    wMaxPacketSize *= 3;
   }
  }




  ep_no = (ed->bEndpointAddress & UE_ADDR);
  if (ep_no != 0) {


   (ues->methods->get_hw_ep_profile)
       (ues->udev, &pf, ep_no);
   if (pf == ((void*)0)) {

    DPRINTFN(0, "Endpoint profile %u "
        "does not exist\n", ep_no);
    return (1);
   }

   if (ep_type == UE_CONTROL) {
    ues->bmInAlloc[ep_no / 8] |=
        (1 << (ep_no % 8));
    ues->bmOutAlloc[ep_no / 8] |=
        (1 << (ep_no % 8));
    if ((pf->max_in_frame_size < wMaxPacketSize) ||
        (pf->max_out_frame_size < wMaxPacketSize)) {
     DPRINTFN(0, "Endpoint profile %u "
         "has too small buffer\n", ep_no);
     return (1);
    }
   } else if (ed->bEndpointAddress & UE_DIR_IN) {
    ues->bmInAlloc[ep_no / 8] |=
        (1 << (ep_no % 8));
    if (pf->max_in_frame_size < wMaxPacketSize) {
     DPRINTFN(0, "Endpoint profile %u "
         "has too small buffer\n", ep_no);
     return (1);
    }
   } else {
    ues->bmOutAlloc[ep_no / 8] |=
        (1 << (ep_no % 8));
    if (pf->max_out_frame_size < wMaxPacketSize) {
     DPRINTFN(0, "Endpoint profile %u "
         "has too small buffer\n", ep_no);
     return (1);
    }
   }
  } else if (is_complete) {


   if (wMaxPacketSize >
       ep_curr->max_frame_size) {
    return (1);
   }
   if (ed->bEndpointAddress & UE_DIR_IN) {
    ed->bEndpointAddress =
        ep_curr->hw_endpoint_in;
   } else {
    ed->bEndpointAddress =
        ep_curr->hw_endpoint_out;
   }

  } else {


   if (ep_curr->max_frame_size < wMaxPacketSize) {
    ep_curr->max_frame_size = wMaxPacketSize;
   }
   if (temp == UE_CONTROL) {
    ep_curr->needs_in = 1;
    ep_curr->needs_out = 1;
   } else {
    if (ed->bEndpointAddress & UE_DIR_IN) {
     ep_curr->needs_in = 1;
    } else {
     ep_curr->needs_out = 1;
    }
   }
   ep_curr->needs_ep_type = ep_type;
  }

  ep_curr++;
  if (ep_max < ep_curr) {
   ep_max = ep_curr;
  }
 }
 goto repeat;
}
