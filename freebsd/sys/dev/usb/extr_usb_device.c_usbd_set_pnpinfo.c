
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_interface {int * pnpinfo; } ;
struct usb_device {int dummy; } ;


 int M_USBDEV ;
 int USB_ERR_INVAL ;
 int USB_ERR_NOMEM ;
 int free (int *,int ) ;
 int * strdup (char const*,int ) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,int ) ;

usb_error_t
usbd_set_pnpinfo(struct usb_device *udev, uint8_t iface_index, const char *pnpinfo)
{
 struct usb_interface *iface;

 iface = usbd_get_iface(udev, iface_index);
 if (iface == ((void*)0))
  return (USB_ERR_INVAL);

 if (iface->pnpinfo != ((void*)0)) {
  free(iface->pnpinfo, M_USBDEV);
  iface->pnpinfo = ((void*)0);
 }

 if (pnpinfo == ((void*)0) || pnpinfo[0] == 0)
  return (0);

 iface->pnpinfo = strdup(pnpinfo, M_USBDEV);
 if (iface->pnpinfo == ((void*)0))
  return (USB_ERR_NOMEM);

 return (0);
}
