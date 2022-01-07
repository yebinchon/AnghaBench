
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_device_request {int bmRequestType; int* wValue; int wIndex; int bRequest; } ;
struct usb_device {int speed; } ;







 int UGETW (int ) ;

 int USB_SPEED_HIGH ;


 scalar_t__* usb_temp_get_config_desc (struct usb_device*,scalar_t__*,int) ;
 scalar_t__* usb_temp_get_device_desc (struct usb_device*) ;
 scalar_t__* usb_temp_get_hub_desc (struct usb_device*) ;
 scalar_t__* usb_temp_get_qualifier_desc (struct usb_device*) ;
 scalar_t__* usb_temp_get_string_desc (struct usb_device*,int ,int) ;
 scalar_t__* usb_temp_get_vendor_desc (struct usb_device*,struct usb_device_request*,scalar_t__*) ;

__attribute__((used)) static usb_error_t
usb_temp_get_desc(struct usb_device *udev, struct usb_device_request *req,
    const void **pPtr, uint16_t *pLength)
{
 const uint8_t *buf;
 uint16_t len;

 buf = ((void*)0);
 len = 0;

 switch (req->bmRequestType) {
 case 128:
  switch (req->bRequest) {
  case 130:
   goto tr_handle_get_descriptor;
  default:
   goto tr_stalled;
  }
 case 129:
  switch (req->bRequest) {
  case 130:
   goto tr_handle_get_class_descriptor;
  default:
   goto tr_stalled;
  }
 default:
  goto tr_stalled;
 }

tr_handle_get_descriptor:
 switch (req->wValue[1]) {
 case 134:
  if (req->wValue[0]) {
   goto tr_stalled;
  }
  buf = usb_temp_get_device_desc(udev);
  goto tr_valid;
 case 133:
  if (udev->speed != USB_SPEED_HIGH) {
   goto tr_stalled;
  }
  if (req->wValue[0]) {
   goto tr_stalled;
  }
  buf = usb_temp_get_qualifier_desc(udev);
  goto tr_valid;
 case 132:
  if (udev->speed != USB_SPEED_HIGH) {
   goto tr_stalled;
  }
 case 135:
  buf = usb_temp_get_config_desc(udev,
      &len, req->wValue[0]);
  goto tr_valid;
 case 131:
  buf = usb_temp_get_string_desc(udev,
      UGETW(req->wIndex), req->wValue[0]);
  goto tr_valid;
 default:
  goto tr_stalled;
 }

tr_handle_get_class_descriptor:
 if (req->wValue[0]) {
  goto tr_stalled;
 }
 buf = usb_temp_get_hub_desc(udev);
 goto tr_valid;

tr_valid:
 if (buf == ((void*)0))
  goto tr_stalled;
 if (len == 0)
  len = buf[0];
 *pPtr = buf;
 *pLength = len;
 return (0);

tr_stalled:

 len = 0;
 buf = usb_temp_get_vendor_desc(udev, req, &len);
 if (buf != ((void*)0))
  goto tr_valid;
 *pPtr = ((void*)0);
 *pLength = 0;
 return (0);
}
