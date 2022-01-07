
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct usb_endpoint_descriptor {int bmAttributes; int wMaxPacketSize; int bEndpointAddress; } ;
struct usb_endpoint {int * methods; } ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {scalar_t__ speed; TYPE_1__ flags; int * parent_hub; int address; } ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*,struct usb_endpoint*,int ,int ,scalar_t__) ;
 int SOTG_HS_MAX_PACKET_SIZE ;

 int UE_XFERTYPE ;
 int UGETW (int ) ;
 scalar_t__ USB_MODE_DEVICE ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 int saf1761_otg_device_isoc_methods ;
 int saf1761_otg_host_isoc_methods ;
 int saf1761_otg_non_isoc_methods ;

__attribute__((used)) static void
saf1761_otg_ep_init(struct usb_device *udev, struct usb_endpoint_descriptor *edesc,
    struct usb_endpoint *ep)
{
 uint16_t mps;

 DPRINTFN(2, "endpoint=%p, addr=%d, endpt=%d, mode=%d\n",
     ep, udev->address,
     edesc->bEndpointAddress, udev->flags.usb_mode);

 if (udev->parent_hub == ((void*)0)) {

  return;
 }


 mps = UGETW(edesc->wMaxPacketSize);
 if (udev->speed == USB_SPEED_HIGH) {
  if ((mps >> 11) & 3) {
   DPRINTF("A packet multiplier different from "
       "1 is not supported\n");
   return;
  }
 }
 if (mps > SOTG_HS_MAX_PACKET_SIZE) {
  DPRINTF("Packet size %d bigger than %d\n",
      (int)mps, SOTG_HS_MAX_PACKET_SIZE);
  return;
 }
 if (udev->flags.usb_mode == USB_MODE_DEVICE) {
  if (udev->speed != USB_SPEED_FULL &&
      udev->speed != USB_SPEED_HIGH) {

   return;
  }
  switch (edesc->bmAttributes & UE_XFERTYPE) {
  case 128:
   ep->methods = &saf1761_otg_device_isoc_methods;
   break;
  default:
   ep->methods = &saf1761_otg_non_isoc_methods;
   break;
  }
 } else {
  switch (edesc->bmAttributes & UE_XFERTYPE) {
  case 128:
   ep->methods = &saf1761_otg_host_isoc_methods;
   break;
  default:
   ep->methods = &saf1761_otg_non_isoc_methods;
   break;
  }
 }
}
