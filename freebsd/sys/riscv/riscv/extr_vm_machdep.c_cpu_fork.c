
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {uintptr_t* pcb_s; uintptr_t pcb_ra; uintptr_t pcb_sp; int tf_sstatus; scalar_t__* tf_a; scalar_t__* tf_t; } ;
struct TYPE_2__ {int md_spinlock_count; int md_saved_sstatus_ie; } ;
struct thread {int td_kstack_pages; TYPE_1__ td_md; struct trapframe* td_frame; struct trapframe* td_pcb; scalar_t__ td_kstack; } ;
struct proc {int dummy; } ;
struct pcb {uintptr_t* pcb_s; uintptr_t pcb_ra; uintptr_t pcb_sp; int tf_sstatus; scalar_t__* tf_a; scalar_t__* tf_t; } ;


 int PAGE_SIZE ;
 int RFPROC ;
 int SSTATUS_SIE ;
 int SSTATUS_SPIE ;
 int SSTATUS_SPP ;
 scalar_t__ STACKALIGN (struct trapframe*) ;
 int bcopy (struct trapframe*,struct trapframe*,int) ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;

void
cpu_fork(struct thread *td1, struct proc *p2, struct thread *td2, int flags)
{
 struct pcb *pcb2;
 struct trapframe *tf;

 if ((flags & RFPROC) == 0)
  return;



 pcb2 = (struct pcb *)(td2->td_kstack +
     td2->td_kstack_pages * PAGE_SIZE) - 1;

 td2->td_pcb = pcb2;
 bcopy(td1->td_pcb, pcb2, sizeof(*pcb2));

 tf = (struct trapframe *)STACKALIGN((struct trapframe *)pcb2 - 1);
 bcopy(td1->td_frame, tf, sizeof(*tf));


 tf->tf_t[0] = 0;


 tf->tf_a[0] = 0;
 tf->tf_a[1] = 0;
 tf->tf_sstatus |= (SSTATUS_SPIE);
 tf->tf_sstatus &= ~(SSTATUS_SPP);

 td2->td_frame = tf;


 td2->td_pcb->pcb_s[0] = (uintptr_t)fork_return;
 td2->td_pcb->pcb_s[1] = (uintptr_t)td2;
 td2->td_pcb->pcb_ra = (uintptr_t)fork_trampoline;
 td2->td_pcb->pcb_sp = (uintptr_t)td2->td_frame;


 td2->td_md.md_spinlock_count = 1;
 td2->td_md.md_saved_sstatus_ie = (SSTATUS_SIE);
}
