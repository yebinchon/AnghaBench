
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct thread {int td_kstack; int td_kstack_pages; struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {int dummy; } ;


 int PAGE_SIZE ;

void
cpu_thread_alloc(struct thread *td)
{
 struct pcb *pcb;

 pcb = (struct pcb *)((td->td_kstack + td->td_kstack_pages * PAGE_SIZE -
     sizeof(struct pcb)) & ~0x2fUL);
 td->td_pcb = pcb;
 td->td_frame = (struct trapframe *)pcb - 1;
}
