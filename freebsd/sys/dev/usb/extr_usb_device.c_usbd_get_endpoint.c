
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct usb_endpoint {scalar_t__ iface_index; TYPE_2__* edesc; } ;
struct TYPE_3__ {scalar_t__ usb_mode; } ;
struct usb_device {int endpoints_max; struct usb_endpoint ctrl_ep; TYPE_1__ flags; struct usb_endpoint* endpoints; } ;
struct usb_config {scalar_t__ ep_index; scalar_t__ endpoint; scalar_t__ type; scalar_t__ direction; scalar_t__ usb_mode; } ;
struct TYPE_4__ {scalar_t__ bEndpointAddress; scalar_t__ bmAttributes; } ;


 int DPRINTFN (int,char*,struct usb_device*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ UE_ADDR ;
 scalar_t__ UE_ADDR_ANY ;
 scalar_t__ UE_BULK_INTR ;
 scalar_t__ UE_DIR_ANY ;
 scalar_t__ UE_DIR_IN ;
 scalar_t__ UE_DIR_OUT ;
 scalar_t__ UE_DIR_RX ;
 scalar_t__ UE_DIR_TX ;
 scalar_t__ UE_TYPE_ANY ;
 scalar_t__ UE_XFERTYPE ;
 scalar_t__ USB_MODE_DEVICE ;
 scalar_t__ USB_MODE_DUAL ;

struct usb_endpoint *
usbd_get_endpoint(struct usb_device *udev, uint8_t iface_index,
    const struct usb_config *setup)
{
 struct usb_endpoint *ep = udev->endpoints;
 struct usb_endpoint *ep_end = udev->endpoints + udev->endpoints_max;
 uint8_t index = setup->ep_index;
 uint8_t ea_mask;
 uint8_t ea_val;
 uint8_t type_mask;
 uint8_t type_val;

 DPRINTFN(10, "udev=%p iface_index=%d address=0x%x "
     "type=0x%x dir=0x%x index=%d\n",
     udev, iface_index, setup->endpoint,
     setup->type, setup->direction, setup->ep_index);



 if (setup->usb_mode != USB_MODE_DUAL &&
     udev->flags.usb_mode != setup->usb_mode) {

  return (((void*)0));
 }



 if (setup->direction == UE_DIR_RX) {
  ea_mask = (UE_DIR_IN | UE_DIR_OUT);
  ea_val = (udev->flags.usb_mode == USB_MODE_DEVICE) ?
      UE_DIR_OUT : UE_DIR_IN;
 } else if (setup->direction == UE_DIR_TX) {
  ea_mask = (UE_DIR_IN | UE_DIR_OUT);
  ea_val = (udev->flags.usb_mode == USB_MODE_DEVICE) ?
      UE_DIR_IN : UE_DIR_OUT;
 } else if (setup->direction == UE_DIR_ANY) {

  ea_mask = 0;
  ea_val = 0;
 } else {

  ea_mask = (UE_DIR_IN | UE_DIR_OUT);
  ea_val = (setup->direction & (UE_DIR_IN | UE_DIR_OUT));
 }



 if (setup->endpoint == UE_ADDR_ANY) {

 } else {

  ea_mask |= UE_ADDR;
  ea_val |= (setup->endpoint & UE_ADDR);
 }



 if (setup->type == UE_BULK_INTR) {

  type_mask = 2;
  type_val = 2;
 } else if (setup->type == UE_TYPE_ANY) {

  type_mask = 0;
  type_val = 0;
 } else {

  type_mask = UE_XFERTYPE;
  type_val = (setup->type & UE_XFERTYPE);
 }






 for (; ep != ep_end; ep++) {

  if ((ep->edesc == ((void*)0)) ||
      (ep->iface_index != iface_index)) {
   continue;
  }


  if (((ep->edesc->bEndpointAddress & ea_mask) == ea_val) &&
      ((ep->edesc->bmAttributes & type_mask) == type_val)) {
   if (!index--) {
    goto found;
   }
  }
 }






 if ((udev->ctrl_ep.edesc != ((void*)0)) &&
     ((udev->ctrl_ep.edesc->bEndpointAddress & ea_mask) == ea_val) &&
     ((udev->ctrl_ep.edesc->bmAttributes & type_mask) == type_val) &&
     (!index)) {
  ep = &udev->ctrl_ep;
  goto found;
 }
 return (((void*)0));

found:
 return (ep);
}
