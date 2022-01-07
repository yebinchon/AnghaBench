
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_2__ {int pcb_esi; int pcb_ebx; } ;



void
cpu_fork_kthread_handler(struct thread *td, void (*func)(void *), void *arg)
{




 td->td_pcb->pcb_esi = (int) func;
 td->td_pcb->pcb_ebx = (int) arg;
}
