
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct trapframe {int tf_sepc; int tf_ra; int tf_sp; int * tf_a; } ;
struct thread {struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {int pcb_fpflags; } ;
struct image_params {int entry_addr; } ;


 int PCB_FP_STARTED ;
 int STACKALIGN (int ) ;
 int memset (struct trapframe*,int ,int) ;

void
exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct trapframe *tf;
 struct pcb *pcb;

 tf = td->td_frame;
 pcb = td->td_pcb;

 memset(tf, 0, sizeof(struct trapframe));

 tf->tf_a[0] = stack;
 tf->tf_sp = STACKALIGN(stack);
 tf->tf_ra = imgp->entry_addr;
 tf->tf_sepc = imgp->entry_addr;

 pcb->pcb_fpflags &= ~PCB_FP_STARTED;
}
