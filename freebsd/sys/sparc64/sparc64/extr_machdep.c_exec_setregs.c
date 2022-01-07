
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_long ;
struct trapframe {int tf_tstate; scalar_t__ tf_tpc; scalar_t__ tf_tnpc; void** tf_out; } ;
struct thread {struct trapframe* td_frame; struct trapframe* td_pcb; struct proc* td_proc; } ;
struct TYPE_3__ {int * md_utrap; int * md_sigtramp; } ;
struct proc {TYPE_2__* p_sysent; TYPE_1__ p_md; } ;
struct pcb {int tf_tstate; scalar_t__ tf_tpc; scalar_t__ tf_tnpc; void** tf_out; } ;
struct image_params {scalar_t__ entry_addr; } ;
struct frame {int dummy; } ;
struct TYPE_4__ {void* sv_psstrings; } ;


 void* SPOFF ;
 int TSTATE_IE ;
 int TSTATE_MM_TSO ;
 int TSTATE_PEF ;
 int bzero (struct trapframe*,int) ;
 void* rounddown (void*,int) ;
 int utrap_free (int *) ;

void
exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct trapframe *tf;
 struct pcb *pcb;
 struct proc *p;
 u_long sp;


 p = td->td_proc;
 p->p_md.md_sigtramp = ((void*)0);
 if (p->p_md.md_utrap != ((void*)0)) {
  utrap_free(p->p_md.md_utrap);
  p->p_md.md_utrap = ((void*)0);
 }

 pcb = td->td_pcb;
 tf = td->td_frame;
 sp = rounddown(stack, 16);
 bzero(pcb, sizeof(*pcb));
 bzero(tf, sizeof(*tf));
 tf->tf_out[0] = stack;
 tf->tf_out[3] = p->p_sysent->sv_psstrings;
 tf->tf_out[6] = sp - SPOFF - sizeof(struct frame);
 tf->tf_tnpc = imgp->entry_addr + 4;
 tf->tf_tpc = imgp->entry_addr;




 tf->tf_tstate = TSTATE_IE | TSTATE_PEF | TSTATE_MM_TSO;
}
