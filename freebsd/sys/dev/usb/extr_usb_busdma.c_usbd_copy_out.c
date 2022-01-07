
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_frlength_t ;
struct usb_page_search {scalar_t__ length; int buffer; } ;
struct usb_page_cache {int dummy; } ;


 void* USB_ADD_BYTES (void*,scalar_t__) ;
 int memcpy (void*,int ,scalar_t__) ;
 int usbd_get_page (struct usb_page_cache*,scalar_t__,struct usb_page_search*) ;

void
usbd_copy_out(struct usb_page_cache *cache, usb_frlength_t offset,
    void *ptr, usb_frlength_t len)
{
 struct usb_page_search res;

 while (len != 0) {

  usbd_get_page(cache, offset, &res);

  if (res.length > len) {
   res.length = len;
  }
  memcpy(ptr, res.buffer, res.length);

  offset += res.length;
  len -= res.length;
  ptr = USB_ADD_BYTES(ptr, res.length);
 }
}
