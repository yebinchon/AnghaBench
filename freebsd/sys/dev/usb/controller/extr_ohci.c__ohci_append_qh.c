
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int page_cache; int ed_self; int ed_next; struct TYPE_5__* next; struct TYPE_5__* prev; scalar_t__ ed_tailp; } ;
typedef TYPE_1__ ohci_ed_t ;


 int DPRINTFN (int,char*,...) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static ohci_ed_t *
_ohci_append_qh(ohci_ed_t *sed, ohci_ed_t *last)
{
 DPRINTFN(11, "%p to %p\n", sed, last);

 if (sed->prev != ((void*)0)) {

  DPRINTFN(0, "ED already linked!\n");
  return (last);
 }


 sed->next = last->next;
 sed->ed_next = last->ed_next;
 sed->ed_tailp = 0;

 sed->prev = last;

 usb_pc_cpu_flush(sed->page_cache);





 last->next = sed;
 last->ed_next = sed->ed_self;

 usb_pc_cpu_flush(last->page_cache);

 return (sed);
}
