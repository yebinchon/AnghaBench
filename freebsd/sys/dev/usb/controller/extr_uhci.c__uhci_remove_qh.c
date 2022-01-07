
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int page_cache; struct TYPE_9__* h_prev; TYPE_1__* h_next; int qh_h_next; } ;
typedef TYPE_2__ uhci_qh_t ;
struct TYPE_8__ {int page_cache; TYPE_2__* h_prev; } ;


 int DPRINTFN (int,char*,TYPE_2__*,TYPE_2__*) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static uhci_qh_t *
_uhci_remove_qh(uhci_qh_t *sqh, uhci_qh_t *last)
{
 DPRINTFN(11, "%p from %p\n", sqh, last);




 if (sqh->h_prev) {

  sqh->h_prev->h_next = sqh->h_next;
  sqh->h_prev->qh_h_next = sqh->qh_h_next;

  usb_pc_cpu_flush(sqh->h_prev->page_cache);

  if (sqh->h_next) {
   sqh->h_next->h_prev = sqh->h_prev;
   usb_pc_cpu_flush(sqh->h_next->page_cache);
  }
  last = ((last == sqh) ? sqh->h_prev : last);

  sqh->h_prev = 0;

  usb_pc_cpu_flush(sqh->page_cache);
 }
 return (last);
}
