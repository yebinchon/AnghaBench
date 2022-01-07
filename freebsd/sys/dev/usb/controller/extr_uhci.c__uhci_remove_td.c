
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* prev; TYPE_1__* next; int page_cache; int td_next; } ;
typedef TYPE_2__ uhci_td_t ;
struct TYPE_8__ {int page_cache; TYPE_2__* prev; } ;


 int DPRINTFN (int,char*,TYPE_2__*,TYPE_2__*) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static uhci_td_t *
_uhci_remove_td(uhci_td_t *std, uhci_td_t *last)
{
 DPRINTFN(11, "%p from %p\n", std, last);



 std->prev->next = std->next;
 std->prev->td_next = std->td_next;

 usb_pc_cpu_flush(std->prev->page_cache);

 if (std->next) {
  std->next->prev = std->prev;
  usb_pc_cpu_flush(std->next->page_cache);
 }
 return ((last == std) ? std->prev : last);
}
