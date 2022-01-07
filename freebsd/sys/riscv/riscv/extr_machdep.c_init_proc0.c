
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct pcpu {struct pcb* pc_curpcb; } ;
struct pcb {scalar_t__ pcb_fpflags; } ;
struct TYPE_3__ {int td_kstack_pages; struct pcb* td_pcb; int * td_frame; scalar_t__ td_kstack; } ;


 int KSTACK_PAGES ;
 int PAGE_SIZE ;
 struct pcpu* __pcpu ;
 int proc0 ;
 int proc0_tf ;
 int proc_linkup0 (int *,TYPE_1__*) ;
 TYPE_1__ thread0 ;

__attribute__((used)) static void
init_proc0(vm_offset_t kstack)
{
 struct pcpu *pcpup;

 pcpup = &__pcpu[0];

 proc_linkup0(&proc0, &thread0);
 thread0.td_kstack = kstack;
 thread0.td_kstack_pages = KSTACK_PAGES;
 thread0.td_pcb = (struct pcb *)(thread0.td_kstack +
     thread0.td_kstack_pages * PAGE_SIZE) - 1;
 thread0.td_pcb->pcb_fpflags = 0;
 thread0.td_frame = &proc0_tf;
 pcpup->pc_curpcb = thread0.td_pcb;
}
