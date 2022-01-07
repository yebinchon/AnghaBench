
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;


 int DPRINTFN (int,char*,int,int,int) ;
 int UA20_CS_CUR ;
 int UA20_CS_SAM_FREQ_CONTROL ;
 int USETW (int ,int) ;
 int USETW2 (int ,int,int) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int usbd_do_request (struct usb_device*,int *,struct usb_device_request*,int*) ;

__attribute__((used)) static usb_error_t
uaudio20_set_speed(struct usb_device *udev, uint8_t iface_no,
    uint8_t clockid, uint32_t speed)
{
 struct usb_device_request req;
 uint8_t data[4];

 DPRINTFN(6, "ifaceno=%d clockid=%d speed=%u\n",
     iface_no, clockid, speed);

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UA20_CS_CUR;
 USETW2(req.wValue, UA20_CS_SAM_FREQ_CONTROL, 0);
 USETW2(req.wIndex, clockid, iface_no);
 USETW(req.wLength, 4);
 data[0] = speed;
 data[1] = speed >> 8;
 data[2] = speed >> 16;
 data[3] = speed >> 24;

 return (usbd_do_request(udev, ((void*)0), &req, data));
}
