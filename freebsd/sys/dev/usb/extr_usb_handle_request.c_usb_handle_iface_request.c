
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_xfer {TYPE_1__* xroot; } ;
struct usb_interface {scalar_t__ parent_iface_index; int alt_index; int * subdev; int * idesc; } ;
struct usb_device_request {int bmRequestType; scalar_t__* wIndex; int bRequest; int * wValue; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* udev; } ;


 int DEVMETHOD (int ,int *) ;
 int DPRINTF (char*,int ) ;
 int ENOTTY ;
 int ENXIO ;


 int USB_ERR_SHORT_XFER ;
 int USB_ERR_STALLED ;
 int USB_HANDLE_REQUEST (int *,struct usb_device_request*,void**,int*,int,scalar_t__*) ;
 scalar_t__ USB_HR_COMPLETE_OK ;
 scalar_t__ USB_HR_NOT_COMPLETE ;
 int USB_XFER_LOCK (struct usb_xfer*) ;
 int USB_XFER_UNLOCK (struct usb_xfer*) ;
 int UT_INTERFACE ;


 scalar_t__ device_is_attached (int *) ;
 int usb_check_alt_setting (struct usb_device*,struct usb_interface*,int ) ;
 int usb_handle_request ;
 int usb_reset_iface_endpoints (struct usb_device*,scalar_t__) ;
 scalar_t__ usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 int usbd_errstr (int) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,scalar_t__) ;

__attribute__((used)) static usb_error_t
usb_handle_iface_request(struct usb_xfer *xfer,
    void **ppdata, uint16_t *plen,
    struct usb_device_request req, uint16_t off, uint8_t state)
{
 struct usb_interface *iface;
 struct usb_interface *iface_parent;
 struct usb_device *udev = xfer->xroot->udev;
 int error;
 uint8_t iface_index;
 uint8_t temp_state;
 uint8_t do_unlock;

 if ((req.bmRequestType & 0x1F) == UT_INTERFACE) {
  iface_index = req.wIndex[0];
 } else {
  iface_index = 0;
 }





 USB_XFER_UNLOCK(xfer);


 do_unlock = usbd_enum_lock(udev);

 error = ENXIO;

tr_repeat:
 iface = usbd_get_iface(udev, iface_index);
 if ((iface == ((void*)0)) ||
     (iface->idesc == ((void*)0))) {

  goto tr_stalled;
 }


 temp_state = state;



 if ((error != 0) &&
     (error != ENOTTY) &&
     (iface->subdev != ((void*)0)) &&
     device_is_attached(iface->subdev)) {



  error = USB_HANDLE_REQUEST(iface->subdev,
      &req, ppdata, plen,
      off, &temp_state);
 }
 iface_parent = usbd_get_iface(udev, iface->parent_iface_index);

 if ((iface_parent == ((void*)0)) ||
     (iface_parent->idesc == ((void*)0))) {

  iface_parent = ((void*)0);
 }


 if ((error != 0) &&
     (error != ENOTTY) &&
     (iface_parent != ((void*)0)) &&
     (iface_parent->subdev != ((void*)0)) &&
     ((req.bmRequestType & 0x1F) == UT_INTERFACE) &&
     (iface_parent->subdev != iface->subdev) &&
     device_is_attached(iface_parent->subdev)) {
  error = USB_HANDLE_REQUEST(iface_parent->subdev,
      &req, ppdata, plen, off, &temp_state);
 }
 if (error == 0) {

  *ppdata = ((uint8_t *)(*ppdata)) - off;
  *plen += off;

  if ((state == USB_HR_NOT_COMPLETE) &&
      (temp_state == USB_HR_COMPLETE_OK))
   goto tr_short;
  else
   goto tr_valid;
 } else if (error == ENOTTY) {
  goto tr_stalled;
 }
 if ((req.bmRequestType & 0x1F) != UT_INTERFACE) {
  iface_index++;
  goto tr_repeat;
 }
 if (state != USB_HR_NOT_COMPLETE) {

  goto tr_valid;
 }
 switch (req.bmRequestType) {
 case 128:
  switch (req.bRequest) {
  case 130:







   error = usb_check_alt_setting(udev,
       iface, req.wValue[0]);
   if (error) {
    DPRINTF("alt setting does not exist %s\n",
        usbd_errstr(error));
    goto tr_stalled;
   }
   error = usb_reset_iface_endpoints(udev, iface_index);
   if (error) {
    DPRINTF("alt setting failed %s\n",
        usbd_errstr(error));
    goto tr_stalled;
   }

   iface->alt_index = req.wValue[0];
   break;

  default:
   goto tr_stalled;
  }
  break;

 case 129:
  switch (req.bRequest) {
  case 131:
   *ppdata = &iface->alt_index;
   *plen = 1;
   break;

  default:
   goto tr_stalled;
  }
  break;
 default:
  goto tr_stalled;
 }
tr_valid:
 if (do_unlock)
  usbd_enum_unlock(udev);
 USB_XFER_LOCK(xfer);
 return (0);

tr_short:
 if (do_unlock)
  usbd_enum_unlock(udev);
 USB_XFER_LOCK(xfer);
 return (USB_ERR_SHORT_XFER);

tr_stalled:
 if (do_unlock)
  usbd_enum_unlock(udev);
 USB_XFER_LOCK(xfer);
 return (USB_ERR_STALLED);
}
