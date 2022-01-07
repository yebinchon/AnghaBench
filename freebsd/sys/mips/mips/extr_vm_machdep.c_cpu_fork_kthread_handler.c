
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
typedef void* register_t ;
struct TYPE_2__ {void** pcb_context; } ;


 size_t PCB_REG_S0 ;
 size_t PCB_REG_S1 ;

void
cpu_fork_kthread_handler(struct thread *td, void (*func)(void *), void *arg)
{




 td->td_pcb->pcb_context[PCB_REG_S0] = (register_t)(intptr_t)func;
 td->td_pcb->pcb_context[PCB_REG_S1] = (register_t)(intptr_t)arg;
}
