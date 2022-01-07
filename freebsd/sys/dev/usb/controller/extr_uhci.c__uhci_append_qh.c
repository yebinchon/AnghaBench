
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int page_cache; int qh_self; int qh_h_next; struct TYPE_5__* h_next; struct TYPE_5__* h_prev; } ;
typedef TYPE_1__ uhci_qh_t ;


 int DPRINTFN (int,char*,...) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static uhci_qh_t *
_uhci_append_qh(uhci_qh_t *sqh, uhci_qh_t *last)
{
 DPRINTFN(11, "%p to %p\n", sqh, last);

 if (sqh->h_prev != ((void*)0)) {

  DPRINTFN(0, "QH already linked!\n");
  return (last);
 }


 sqh->h_next = last->h_next;
 sqh->qh_h_next = last->qh_h_next;

 sqh->h_prev = last;

 usb_pc_cpu_flush(sqh->page_cache);







 last->h_next = sqh;
 last->qh_h_next = sqh->qh_self;

 usb_pc_cpu_flush(last->page_cache);

 return (sqh);
}
