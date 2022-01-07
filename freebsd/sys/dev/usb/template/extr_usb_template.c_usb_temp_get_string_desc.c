
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_temp_device_desc {void const* (* getStringDesc ) (int ,int ) ;} ;
struct usb_device {int dummy; } ;


 void const* stub1 (int ,int ) ;
 struct usb_temp_device_desc* usb_temp_get_tdd (struct usb_device*) ;

__attribute__((used)) static const void *
usb_temp_get_string_desc(struct usb_device *udev,
    uint16_t lang_id, uint8_t string_index)
{
 const struct usb_temp_device_desc *tdd;

 tdd = usb_temp_get_tdd(udev);
 if (tdd == ((void*)0)) {
  return (((void*)0));
 }
 if (tdd->getStringDesc == ((void*)0)) {
  return (((void*)0));
 }
 return ((tdd->getStringDesc) (lang_id, string_index));
}
