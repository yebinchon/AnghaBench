
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_page_search {int physaddr; struct ohci_ed* buffer; } ;
struct usb_page_cache {int dummy; } ;
struct ohci_ed {struct usb_page_cache* page_cache; void* ed_flags; void* ed_self; } ;


 int OHCI_ED_SKIP ;
 void* htole32 (int ) ;
 int usbd_get_page (struct usb_page_cache*,int ,struct usb_page_search*) ;

__attribute__((used)) static struct ohci_ed *
ohci_init_ed(struct usb_page_cache *pc)
{
 struct usb_page_search buf_res;
 struct ohci_ed *ed;

 usbd_get_page(pc, 0, &buf_res);

 ed = buf_res.buffer;

 ed->ed_self = htole32(buf_res.physaddr);
 ed->ed_flags = htole32(OHCI_ED_SKIP);
 ed->page_cache = pc;

 return (ed);
}
