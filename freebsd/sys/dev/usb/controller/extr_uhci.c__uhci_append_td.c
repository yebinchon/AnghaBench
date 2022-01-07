
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int page_cache; int td_self; int td_next; struct TYPE_7__* next; struct TYPE_7__* prev; } ;
typedef TYPE_1__ uhci_td_t ;


 int DPRINTFN (int,char*,TYPE_1__*,TYPE_1__*) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static uhci_td_t *
_uhci_append_td(uhci_td_t *std, uhci_td_t *last)
{
 DPRINTFN(11, "%p to %p\n", std, last);



 std->next = last->next;
 std->td_next = last->td_next;

 std->prev = last;

 usb_pc_cpu_flush(std->page_cache);




 last->next = std;
 last->td_next = std->td_self;

 usb_pc_cpu_flush(last->page_cache);

 return (std);
}
