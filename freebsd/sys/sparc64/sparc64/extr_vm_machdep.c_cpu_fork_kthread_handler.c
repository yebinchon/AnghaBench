
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_long ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_sp; } ;
struct frame {void** fr_local; } ;


 scalar_t__ SPOFF ;

void
cpu_fork_kthread_handler(struct thread *td, void (*func)(void *), void *arg)
{
 struct frame *fp;
 struct pcb *pcb;

 pcb = td->td_pcb;
 fp = (struct frame *)(pcb->pcb_sp + SPOFF);
 fp->fr_local[0] = (u_long)func;
 fp->fr_local[1] = (u_long)arg;
}
