
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int vscr; } ;
struct TYPE_5__ {scalar_t__ usr_vsid; } ;
struct TYPE_6__ {TYPE_1__ aim; } ;
struct trapframe {int cr; TYPE_3__ pcb_vec; TYPE_2__ pcb_cpu; void* pcb_lr; void** pcb_context; void* pcb_toc; void* pcb_sp; scalar_t__* fixreg; } ;
struct TYPE_8__ {int md_spinlock_count; int md_saved_msr; } ;
struct thread {TYPE_4__ td_md; struct trapframe* td_frame; struct trapframe* td_pcb; } ;
struct pcb {int cr; TYPE_3__ pcb_vec; TYPE_2__ pcb_cpu; void* pcb_lr; void** pcb_context; void* pcb_toc; void* pcb_sp; scalar_t__* fixreg; } ;
struct callframe {void* cf_arg1; void* cf_arg0; void* cf_func; } ;
typedef void* register_t ;


 size_t FIRSTARG ;
 int SPEFSCR_FDBZE ;
 int SPEFSCR_FINVE ;
 int SPEFSCR_FOVFE ;
 int SPEFSCR_FUNFE ;
 int bcopy (struct trapframe*,struct trapframe*,int) ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;
 int memset (struct callframe*,int ,int) ;
 int psl_kernset ;

void
cpu_copy_thread(struct thread *td, struct thread *td0)
{
 struct pcb *pcb2;
 struct trapframe *tf;
 struct callframe *cf;

 pcb2 = td->td_pcb;


 bcopy(td0->td_pcb, pcb2, sizeof(*pcb2));


 tf = td->td_frame;
 bcopy(td0->td_frame, tf, sizeof(struct trapframe));
 tf->fixreg[FIRSTARG] = 0;
 tf->fixreg[FIRSTARG + 1] = 0;
 tf->cr &= ~0x10000000;


 cf = (struct callframe *)tf - 1;
 memset(cf, 0, sizeof(struct callframe));
 cf->cf_func = (register_t)fork_return;
 cf->cf_arg0 = (register_t)td;
 cf->cf_arg1 = (register_t)tf;

 pcb2->pcb_sp = (register_t)cf;




 pcb2->pcb_lr = (register_t)fork_trampoline;
 pcb2->pcb_context[0] = pcb2->pcb_lr;

 pcb2->pcb_cpu.aim.usr_vsid = 0;






 td->td_md.md_spinlock_count = 1;
 td->td_md.md_saved_msr = psl_kernset;
}
