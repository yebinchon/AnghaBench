
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_temp_device_desc {void const* (* getVendorDesc ) (struct usb_device_request const*,int *) ;} ;
struct usb_device_request {int dummy; } ;
struct usb_device {int dummy; } ;


 void const* stub1 (struct usb_device_request const*,int *) ;
 struct usb_temp_device_desc* usb_temp_get_tdd (struct usb_device*) ;

__attribute__((used)) static const void *
usb_temp_get_vendor_desc(struct usb_device *udev,
    const struct usb_device_request *req, uint16_t *plen)
{
 const struct usb_temp_device_desc *tdd;

 tdd = usb_temp_get_tdd(udev);
 if (tdd == ((void*)0)) {
  return (((void*)0));
 }
 if (tdd->getVendorDesc == ((void*)0)) {
  return (((void*)0));
 }
 return ((tdd->getVendorDesc) (req, plen));
}
