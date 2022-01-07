
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct TYPE_4__ {int md_spinlock_count; int md_saved_sstatus_ie; } ;
struct thread {TYPE_1__ td_md; TYPE_2__* td_frame; TYPE_2__* td_pcb; } ;
struct pcb {int dummy; } ;
struct TYPE_5__ {uintptr_t* pcb_s; uintptr_t pcb_ra; uintptr_t pcb_sp; } ;


 int SSTATUS_SIE ;
 int bcopy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;

void
cpu_copy_thread(struct thread *td, struct thread *td0)
{

 bcopy(td0->td_frame, td->td_frame, sizeof(struct trapframe));
 bcopy(td0->td_pcb, td->td_pcb, sizeof(struct pcb));

 td->td_pcb->pcb_s[0] = (uintptr_t)fork_return;
 td->td_pcb->pcb_s[1] = (uintptr_t)td;
 td->td_pcb->pcb_ra = (uintptr_t)fork_trampoline;
 td->td_pcb->pcb_sp = (uintptr_t)td->td_frame;


 td->td_md.md_spinlock_count = 1;
 td->td_md.md_saved_sstatus_ie = (SSTATUS_SIE);
}
