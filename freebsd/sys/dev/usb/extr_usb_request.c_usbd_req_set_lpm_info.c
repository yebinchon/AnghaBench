
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct usb_device_request {int* wIndex; int wLength; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;
typedef int buf ;


 int UHF_PORT_L1 ;
 int UR_SET_AND_TEST ;
 scalar_t__ USB_ERR_IOERROR ;
 scalar_t__ USB_ERR_PENDING_REQUESTS ;
 scalar_t__ USB_ERR_STALLED ;
 scalar_t__ USB_ERR_TIMEOUT ;
 int USETW (int ,int) ;
 int UT_WRITE_CLASS_OTHER ;
 scalar_t__ usbd_do_request (struct usb_device*,struct mtx*,struct usb_device_request*,int*) ;

usb_error_t
usbd_req_set_lpm_info(struct usb_device *udev, struct mtx *mtx,
    uint8_t port, uint8_t besl, uint8_t addr, uint8_t rwe)
{
 struct usb_device_request req;
 usb_error_t err;
 uint8_t buf[1];

 req.bmRequestType = UT_WRITE_CLASS_OTHER;
 req.bRequest = UR_SET_AND_TEST;
 USETW(req.wValue, UHF_PORT_L1);
 req.wIndex[0] = (port & 0xF) | ((besl & 0xF) << 4);
 req.wIndex[1] = (addr & 0x7F) | (rwe ? 0x80 : 0x00);
 USETW(req.wLength, sizeof(buf));


 buf[0] = 0x00;

 err = usbd_do_request(udev, mtx, &req, buf);
 if (err)
  return (err);

 switch (buf[0]) {
 case 0x00:
  break;
 case 0x10:
  err = USB_ERR_PENDING_REQUESTS;
  break;
 case 0x11:
  err = USB_ERR_TIMEOUT;
  break;
 case 0x30:
  err = USB_ERR_STALLED;
  break;
 default:
  err = USB_ERR_IOERROR;
  break;
 }
 return (err);
}
