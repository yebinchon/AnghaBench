
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct trapframe {int srr1; void** fixreg; } ;
struct thread {int td_proc; struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct TYPE_7__ {struct trapframe* vr; int vrsave; int vscr; } ;
struct TYPE_6__ {TYPE_5__* fpr; struct trapframe fpscr; } ;
struct pcb {int pcb_flags; TYPE_2__ pcb_vec; TYPE_1__ pcb_fpu; } ;
typedef void* register_t ;
struct TYPE_8__ {scalar_t__ mc_vers; int mc_len; int mc_srr1; int mc_flags; int * mc_avec; int mc_vrsave; int mc_vscr; int * mc_vsxfpreg; int * mc_fpreg; int mc_fpscr; int * mc_frame; } ;
typedef TYPE_3__ mcontext_t ;
struct TYPE_9__ {struct trapframe* vsr; struct trapframe fpr; } ;


 int EINVAL ;
 int PCB_FPREGS ;
 int PCB_FPU ;
 int PCB_VEC ;
 int PSL_FP ;
 int SV_LP64 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int _MC_AV_VALID ;
 int _MC_FP_VALID ;
 scalar_t__ _MC_VERSION ;
 int bzero (TYPE_5__*,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int enable_vec (struct thread*) ;
 int memcpy (struct trapframe*,int *,int) ;
 int psl_userstatic ;

int
set_mcontext(struct thread *td, mcontext_t *mcp)
{
 struct pcb *pcb;
 struct trapframe *tf;
 register_t tls;
 int i;

 pcb = td->td_pcb;
 tf = td->td_frame;

 if (mcp->mc_vers != _MC_VERSION || mcp->mc_len != sizeof(*mcp))
  return (EINVAL);




 if ((mcp->mc_srr1 & psl_userstatic) != (tf->srr1 & psl_userstatic)) {
  return (EINVAL);
 }


 if (SV_PROC_FLAG(td->td_proc, SV_LP64))
  tls = tf->fixreg[13];
 else
  tls = tf->fixreg[2];
 memcpy(tf, mcp->mc_frame, sizeof(mcp->mc_frame));
 if (SV_PROC_FLAG(td->td_proc, SV_LP64))
  tf->fixreg[13] = tls;
 else
  tf->fixreg[2] = tls;


 tf->srr1 &= ~PSL_FP;
 pcb->pcb_flags &= ~PCB_FPU;

 if (mcp->mc_flags & _MC_FP_VALID) {

  pcb->pcb_flags |= PCB_FPREGS;
  memcpy(&pcb->pcb_fpu.fpscr, &mcp->mc_fpscr, sizeof(double));
  bzero(pcb->pcb_fpu.fpr, sizeof(pcb->pcb_fpu.fpr));
  for (i = 0; i < 32; i++) {
   memcpy(&pcb->pcb_fpu.fpr[i].fpr, &mcp->mc_fpreg[i],
       sizeof(double));
   memcpy(&pcb->pcb_fpu.fpr[i].vsr[2],
       &mcp->mc_vsxfpreg[i], sizeof(double));
  }
 }

 if (mcp->mc_flags & _MC_AV_VALID) {
  if ((pcb->pcb_flags & PCB_VEC) != PCB_VEC) {
   critical_enter();
   enable_vec(td);
   critical_exit();
  }
  pcb->pcb_vec.vscr = mcp->mc_vscr;
  pcb->pcb_vec.vrsave = mcp->mc_vrsave;
  memcpy(pcb->pcb_vec.vr, mcp->mc_avec, sizeof(mcp->mc_avec));
 }

 return (0);
}
