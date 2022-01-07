
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_long ;
struct trapframe {int dummy; } ;
struct TYPE_2__ {int md_spinlock_count; scalar_t__ md_saved_pil; } ;
struct thread {TYPE_1__ td_md; struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {void* pcb_sp; void* pcb_pc; } ;
struct frame {void** fr_local; } ;


 void* SPOFF ;
 int bcopy (struct trapframe*,struct trapframe*,int) ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;

void
cpu_copy_thread(struct thread *td, struct thread *td0)
{
 struct trapframe *tf;
 struct frame *fr;
 struct pcb *pcb;

 bcopy(td0->td_frame, td->td_frame, sizeof(struct trapframe));

 pcb = td->td_pcb;
 tf = td->td_frame;
 fr = (struct frame *)tf - 1;
 fr->fr_local[0] = (u_long)fork_return;
 fr->fr_local[1] = (u_long)td;
 fr->fr_local[2] = (u_long)tf;
 pcb->pcb_pc = (u_long)fork_trampoline - 8;
 pcb->pcb_sp = (u_long)fr - SPOFF;


 td->td_md.md_spinlock_count = 1;
 td->td_md.md_saved_pil = 0;
}
