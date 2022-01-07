
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_temp_setup {int size; scalar_t__ bInterfaceNumber; scalar_t__ buf; } ;
struct usb_interface_assoc_descriptor {int bFirstInterface; } ;
struct usb_cdc_union_descriptor {int * bSlaveInterface; int bMasterInterface; } ;
struct usb_cdc_cm_descriptor {int bDataInterface; } ;


 int const UDESCSUB_CDC_CM ;
 int const UDESCSUB_CDC_UNION ;
 int const UDESC_CS_INTERFACE ;
 int const UDESC_IFACE_ASSOC ;
 void* USB_ADD_BYTES (scalar_t__,int ) ;
 int memcpy (void*,int const*,int) ;

__attribute__((used)) static void
usb_make_raw_desc(struct usb_temp_setup *temp,
    const uint8_t *raw)
{
 void *dst;
 uint8_t len;




 if (raw) {
  len = raw[0];
  if (temp->buf) {
   dst = USB_ADD_BYTES(temp->buf, temp->size);
   memcpy(dst, raw, len);



   if ((raw[0] == sizeof(struct usb_cdc_union_descriptor)) &&
       (raw[1] == UDESC_CS_INTERFACE) &&
       (raw[2] == UDESCSUB_CDC_UNION)) {
    struct usb_cdc_union_descriptor *ud = (void *)dst;



    ud->bMasterInterface +=
        temp->bInterfaceNumber;
    ud->bSlaveInterface[0] +=
        temp->bInterfaceNumber;
   }



   if ((raw[0] == sizeof(struct usb_interface_assoc_descriptor)) &&
       (raw[1] == UDESC_IFACE_ASSOC)) {
    struct usb_interface_assoc_descriptor *iad = (void *)dst;



    iad->bFirstInterface +=
        temp->bInterfaceNumber;
   }



   if ((raw[0] == sizeof(struct usb_cdc_cm_descriptor)) &&
       (raw[1] == UDESC_CS_INTERFACE) &&
       (raw[2] == UDESCSUB_CDC_CM)) {
    struct usb_cdc_cm_descriptor *ccd = (void *)dst;



    ccd->bDataInterface +=
        temp->bInterfaceNumber;
   }
  }
  temp->size += len;
 }
}
