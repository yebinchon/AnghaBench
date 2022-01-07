
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ usr_vsid; } ;
struct TYPE_5__ {TYPE_1__ aim; } ;
struct trapframe {int cr; int pcb_sp; TYPE_2__ pcb_cpu; void* pcb_lr; void** pcb_context; void* pcb_toc; scalar_t__* fixreg; } ;
struct TYPE_6__ {int md_spinlock_count; int md_saved_msr; } ;
struct thread {int td_kstack; int td_kstack_pages; TYPE_3__ td_md; struct trapframe* td_frame; struct trapframe* td_pcb; } ;
struct proc {int dummy; } ;
struct pcb {int cr; int pcb_sp; TYPE_2__ pcb_cpu; void* pcb_lr; void** pcb_context; void* pcb_toc; scalar_t__* fixreg; } ;
struct callframe {void* cf_arg1; void* cf_arg0; void* cf_func; void* cf_toc; } ;
typedef void* register_t ;


 int CTR3 (int ,char*,struct thread*,struct proc*,int) ;
 size_t FIRSTARG ;
 int KASSERT (int,char*) ;
 int KTR_PROC ;
 int PAGE_SIZE ;
 int RFPROC ;
 int bcopy (struct trapframe*,struct trapframe*,int) ;
 struct thread* curthread ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;
 int memset (struct callframe*,int ,int) ;
 int psl_kernset ;
 struct thread thread0 ;

void
cpu_fork(struct thread *td1, struct proc *p2, struct thread *td2, int flags)
{
 struct trapframe *tf;
 struct callframe *cf;
 struct pcb *pcb;

 KASSERT(td1 == curthread || td1 == &thread0,
     ("cpu_fork: p1 not curproc and not proc0"));
 CTR3(KTR_PROC, "cpu_fork: called td1=%p p2=%p flags=%x",
     td1, p2, flags);

 if ((flags & RFPROC) == 0)
  return;

 pcb = (struct pcb *)((td2->td_kstack +
     td2->td_kstack_pages * PAGE_SIZE - sizeof(struct pcb)) & ~0x2fUL);
 td2->td_pcb = pcb;


 bcopy(td1->td_pcb, pcb, sizeof(struct pcb));






 tf = (struct trapframe *)pcb - 1;
 bcopy(td1->td_frame, tf, sizeof(*tf));


 tf->fixreg[FIRSTARG] = 0;
 tf->fixreg[FIRSTARG + 1] = 0;
 tf->cr &= ~0x10000000;

 td2->td_frame = tf;

 cf = (struct callframe *)tf - 1;
 memset(cf, 0, sizeof(struct callframe));



 cf->cf_func = (register_t)fork_return;
 cf->cf_arg0 = (register_t)td2;
 cf->cf_arg1 = (register_t)tf;

 pcb->pcb_sp = (register_t)cf;
 KASSERT(pcb->pcb_sp % 16 == 0, ("stack misaligned"));




 pcb->pcb_lr = (register_t)fork_trampoline;
 pcb->pcb_context[0] = pcb->pcb_lr;






 td2->td_md.md_spinlock_count = 1;
 td2->td_md.md_saved_msr = psl_kernset;




}
