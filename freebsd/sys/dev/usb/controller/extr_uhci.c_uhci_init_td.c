
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_page_search {int physaddr; struct uhci_td* buffer; } ;
struct usb_page_cache {int dummy; } ;
struct uhci_td {int td_self; struct usb_page_cache* page_cache; } ;


 int UHCI_PTR_TD ;
 int htole32 (int ) ;
 int usbd_get_page (struct usb_page_cache*,int ,struct usb_page_search*) ;

__attribute__((used)) static struct uhci_td *
uhci_init_td(struct usb_page_cache *pc)
{
 struct usb_page_search buf_res;
 struct uhci_td *td;

 usbd_get_page(pc, 0, &buf_res);

 td = buf_res.buffer;

 td->td_self =
     htole32(buf_res.physaddr) |
     htole32(UHCI_PTR_TD);

 td->page_cache = pc;

 return (td);
}
