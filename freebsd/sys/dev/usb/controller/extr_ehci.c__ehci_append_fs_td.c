
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int page_cache; int sitd_self; int sitd_next; struct TYPE_7__* next; struct TYPE_7__* prev; } ;
typedef TYPE_1__ ehci_sitd_t ;


 int DPRINTFN (int,char*,TYPE_1__*,TYPE_1__*) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static ehci_sitd_t *
_ehci_append_fs_td(ehci_sitd_t *std, ehci_sitd_t *last)
{
 DPRINTFN(11, "%p to %p\n", std, last);



 std->next = last->next;
 std->sitd_next = last->sitd_next;

 std->prev = last;

 usb_pc_cpu_flush(std->page_cache);




 last->next = std;
 last->sitd_next = std->sitd_self;

 usb_pc_cpu_flush(last->page_cache);

 return (std);
}
