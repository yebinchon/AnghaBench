
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcb {int pcb_regs; } ;
struct TYPE_3__ {int td_kstack; int td_kstack_pages; struct pcb* td_pcb; int * td_frame; } ;


 int DPCPU_SIZE ;
 int KASSERT (int,char*) ;
 int KSTACK_PAGES ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int PCPU_SET (int ,struct pcb*) ;
 int curpcb ;
 int dpcpu_init (void*,int ) ;
 int kstack0 ;
 int panic (char*) ;
 scalar_t__ platform_processor_id () ;
 scalar_t__ pmap_steal_memory (int ) ;
 int proc0 ;
 int proc_linkup0 (int *,TYPE_1__*) ;
 TYPE_1__ thread0 ;

void
mips_proc0_init(void)
{




 proc_linkup0(&proc0, &thread0);

 KASSERT((kstack0 & PAGE_MASK) == 0,
  ("kstack0 is not aligned on a page boundary: 0x%0lx",
  (long)kstack0));
 thread0.td_kstack = kstack0;
 thread0.td_kstack_pages = KSTACK_PAGES;





 thread0.td_pcb = (struct pcb *)(thread0.td_kstack +
     thread0.td_kstack_pages * PAGE_SIZE) - 1;
 thread0.td_frame = &thread0.td_pcb->pcb_regs;


 dpcpu_init((void *)pmap_steal_memory(DPCPU_SIZE), 0);

 PCPU_SET(curpcb, thread0.td_pcb);





}
