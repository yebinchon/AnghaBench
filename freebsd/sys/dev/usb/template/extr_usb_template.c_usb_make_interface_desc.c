
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_temp_setup {int size; scalar_t__ bNumEndpoints; scalar_t__ bAlternateSetting; scalar_t__ bInterfaceNumber; scalar_t__ buf; } ;
struct usb_temp_interface_desc {scalar_t__ isAltInterface; void** ppRawDesc; int iInterface; int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; struct usb_temp_endpoint_desc** ppEndpoints; } ;
struct usb_temp_endpoint_desc {int dummy; } ;
struct usb_interface_descriptor {int bLength; int iInterface; int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; scalar_t__ bNumEndpoints; scalar_t__ bAlternateSetting; scalar_t__ bInterfaceNumber; int bDescriptorType; } ;


 int UDESC_INTERFACE ;
 struct usb_interface_descriptor* USB_ADD_BYTES (scalar_t__,int) ;
 int usb_make_endpoint_desc (struct usb_temp_setup*,struct usb_temp_endpoint_desc const*) ;
 int usb_make_raw_desc (struct usb_temp_setup*,void const*) ;

__attribute__((used)) static void
usb_make_interface_desc(struct usb_temp_setup *temp,
    const struct usb_temp_interface_desc *tid)
{
 struct usb_interface_descriptor *id;
 const struct usb_temp_endpoint_desc **ted;
 const void **rd;
 uint16_t old_size;



 old_size = temp->size;
 temp->size += sizeof(*id);



 if (tid->isAltInterface == 0) {
  temp->bAlternateSetting = 0;
  temp->bInterfaceNumber++;
 } else {
  temp->bAlternateSetting++;
 }



 rd = tid->ppRawDesc;

 if (rd) {
  while (*rd) {
   usb_make_raw_desc(temp, *rd);
   rd++;
  }
 }


 temp->bNumEndpoints = 0;



 ted = tid->ppEndpoints;
 if (ted) {
  while (*ted) {
   usb_make_endpoint_desc(temp, *ted);
   ted++;
  }
 }




 if (temp->buf) {
  id = USB_ADD_BYTES(temp->buf, old_size);
  id->bLength = sizeof(*id);
  id->bDescriptorType = UDESC_INTERFACE;
  id->bInterfaceNumber = temp->bInterfaceNumber;
  id->bAlternateSetting = temp->bAlternateSetting;
  id->bNumEndpoints = temp->bNumEndpoints;
  id->bInterfaceClass = tid->bInterfaceClass;
  id->bInterfaceSubClass = tid->bInterfaceSubClass;
  id->bInterfaceProtocol = tid->bInterfaceProtocol;
  id->iInterface = tid->iInterface;
 }
}
