
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {scalar_t__ td_frame; TYPE_1__* td_pcb; } ;
struct TYPE_2__ {uintptr_t* pcb_s; uintptr_t pcb_ra; uintptr_t pcb_sp; } ;


 scalar_t__ fork_trampoline ;

void
cpu_fork_kthread_handler(struct thread *td, void (*func)(void *), void *arg)
{

 td->td_pcb->pcb_s[0] = (uintptr_t)func;
 td->td_pcb->pcb_s[1] = (uintptr_t)arg;
 td->td_pcb->pcb_ra = (uintptr_t)fork_trampoline;
 td->td_pcb->pcb_sp = (uintptr_t)td->td_frame;
}
