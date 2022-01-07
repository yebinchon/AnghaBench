
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_size_t ;
typedef int uint8_t ;
struct usbd_lookup_info {scalar_t__ idVendor; scalar_t__ idProduct; scalar_t__ bcdDevice; scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct usb_device_id {scalar_t__ idVendor; scalar_t__ idProduct; scalar_t__ bcdDevice_lo; scalar_t__ bcdDevice_hi; scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; scalar_t__ match_flag_int_protocol; scalar_t__ match_flag_int_subclass; scalar_t__ match_flag_int_class; scalar_t__ match_flag_dev_protocol; scalar_t__ match_flag_dev_subclass; scalar_t__ match_flag_dev_class; scalar_t__ match_flag_dev_hi; scalar_t__ match_flag_dev_lo; scalar_t__ match_flag_product; scalar_t__ match_flag_vendor; } ;



const struct usb_device_id *
usbd_lookup_id_by_info(const struct usb_device_id *id, usb_size_t sizeof_id,
    const struct usbd_lookup_info *info)
{
 const struct usb_device_id *id_end;

 if (id == ((void*)0)) {
  goto done;
 }
 id_end = (const void *)(((const uint8_t *)id) + sizeof_id);





 for (; id != id_end; id++) {

  if ((id->match_flag_vendor) &&
      (id->idVendor != info->idVendor)) {
   continue;
  }
  if ((id->match_flag_product) &&
      (id->idProduct != info->idProduct)) {
   continue;
  }
  if ((id->match_flag_dev_lo) &&
      (id->bcdDevice_lo > info->bcdDevice)) {
   continue;
  }
  if ((id->match_flag_dev_hi) &&
      (id->bcdDevice_hi < info->bcdDevice)) {
   continue;
  }
  if ((id->match_flag_dev_class) &&
      (id->bDeviceClass != info->bDeviceClass)) {
   continue;
  }
  if ((id->match_flag_dev_subclass) &&
      (id->bDeviceSubClass != info->bDeviceSubClass)) {
   continue;
  }
  if ((id->match_flag_dev_protocol) &&
      (id->bDeviceProtocol != info->bDeviceProtocol)) {
   continue;
  }
  if ((id->match_flag_int_class) &&
      (id->bInterfaceClass != info->bInterfaceClass)) {
   continue;
  }
  if ((id->match_flag_int_subclass) &&
      (id->bInterfaceSubClass != info->bInterfaceSubClass)) {
   continue;
  }
  if ((id->match_flag_int_protocol) &&
      (id->bInterfaceProtocol != info->bInterfaceProtocol)) {
   continue;
  }

  return (id);
 }

done:
 return (((void*)0));
}
