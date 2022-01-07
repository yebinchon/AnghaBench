
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int page_cache; int qh_self; int qh_link; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ ehci_qh_t ;


 int DPRINTFN (int,char*,...) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static ehci_qh_t *
_ehci_append_qh(ehci_qh_t *sqh, ehci_qh_t *last)
{
 DPRINTFN(11, "%p to %p\n", sqh, last);

 if (sqh->prev != ((void*)0)) {

  DPRINTFN(0, "QH already linked!\n");
  return (last);
 }


 sqh->next = last->next;
 sqh->qh_link = last->qh_link;

 sqh->prev = last;

 usb_pc_cpu_flush(sqh->page_cache);





 last->next = sqh;
 last->qh_link = sqh->qh_self;

 usb_pc_cpu_flush(last->page_cache);

 return (sqh);
}
