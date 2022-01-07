
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_hub_ss_descriptor {int bNbrPorts; } ;
struct usb_hub_descriptor {int bNbrPorts; int wHubCharacteristics; } ;
struct TYPE_2__ {scalar_t__ bDeviceClass; } ;
struct usb_device {int speed; TYPE_1__ ddesc; } ;


 int DPRINTFN (int ,char*,int ) ;
 scalar_t__ UDCLASS_HUB ;
 int UGETW (int ) ;
 int USB_ERR_INVAL ;




 int usbd_errstr (int ) ;
 int usbd_req_get_hub_descriptor (struct usb_device*,int *,struct usb_hub_descriptor*,int) ;
 int usbd_req_get_ss_hub_descriptor (struct usb_device*,int *,struct usb_hub_ss_descriptor*,int) ;

usb_error_t
uhub_query_info(struct usb_device *udev, uint8_t *pnports, uint8_t *ptt)
{
 struct usb_hub_descriptor hubdesc20;
 struct usb_hub_ss_descriptor hubdesc30;
 usb_error_t err;
 uint8_t nports;
 uint8_t tt;

 if (udev->ddesc.bDeviceClass != UDCLASS_HUB)
  return (USB_ERR_INVAL);

 nports = 0;
 tt = 0;

 switch (udev->speed) {
 case 129:
 case 131:
 case 130:

  err = usbd_req_get_hub_descriptor(udev, ((void*)0), &hubdesc20, 1);
  if (err) {
   DPRINTFN(0, "getting USB 2.0 HUB descriptor failed,"
       "error=%s\n", usbd_errstr(err));
   break;
  }
  nports = hubdesc20.bNbrPorts;
  if (nports > 127)
   nports = 127;

  if (udev->speed == 130)
   tt = (UGETW(hubdesc20.wHubCharacteristics) >> 5) & 3;
  break;

 case 128:
  err = usbd_req_get_ss_hub_descriptor(udev, ((void*)0), &hubdesc30, 1);
  if (err) {
   DPRINTFN(0, "Getting USB 3.0 HUB descriptor failed,"
       "error=%s\n", usbd_errstr(err));
   break;
  }
  nports = hubdesc30.bNbrPorts;
  if (nports > 16)
   nports = 16;
  break;

 default:
  err = USB_ERR_INVAL;
  break;
 }

 if (pnports != ((void*)0))
  *pnports = nports;

 if (ptt != ((void*)0))
  *ptt = tt;

 return (err);
}
