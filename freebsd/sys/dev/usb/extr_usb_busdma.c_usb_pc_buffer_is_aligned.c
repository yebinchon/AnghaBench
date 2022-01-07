
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_frlength_t ;
typedef int uint8_t ;
struct usb_page_search {scalar_t__ length; int buffer; } ;
struct usb_page_cache {int dummy; } ;


 scalar_t__ USB_P2U (int ) ;
 int usbd_get_page (struct usb_page_cache*,scalar_t__,struct usb_page_search*) ;

uint8_t
usb_pc_buffer_is_aligned(struct usb_page_cache *pc, usb_frlength_t offset,
    usb_frlength_t len, usb_frlength_t mask)
{
 struct usb_page_search buf_res;

 while (len != 0) {

  usbd_get_page(pc, offset, &buf_res);

  if (buf_res.length > len)
   buf_res.length = len;
  if (USB_P2U(buf_res.buffer) & mask)
   return (0);
  if (buf_res.length & mask)
   return (0);

  offset += buf_res.length;
  len -= buf_res.length;
 }
 return (1);
}
