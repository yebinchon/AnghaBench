
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int page_cache; struct TYPE_9__* prev; TYPE_1__* next; int qh_link; } ;
typedef TYPE_2__ ehci_qh_t ;
struct TYPE_8__ {int page_cache; TYPE_2__* prev; } ;


 int DPRINTFN (int,char*,TYPE_2__*,TYPE_2__*) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static ehci_qh_t *
_ehci_remove_qh(ehci_qh_t *sqh, ehci_qh_t *last)
{
 DPRINTFN(11, "%p from %p\n", sqh, last);




 if (sqh->prev) {

  sqh->prev->next = sqh->next;
  sqh->prev->qh_link = sqh->qh_link;

  usb_pc_cpu_flush(sqh->prev->page_cache);

  if (sqh->next) {
   sqh->next->prev = sqh->prev;
   usb_pc_cpu_flush(sqh->next->page_cache);
  }
  last = ((last == sqh) ? sqh->prev : last);

  sqh->prev = 0;

  usb_pc_cpu_flush(sqh->page_cache);
 }
 return (last);
}
