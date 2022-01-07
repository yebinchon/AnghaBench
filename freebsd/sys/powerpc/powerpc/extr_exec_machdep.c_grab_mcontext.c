
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct thread {int * td_frame; struct pcb* td_pcb; } ;
struct TYPE_9__ {int * vr; int vrsave; int vscr; } ;
struct TYPE_8__ {TYPE_1__* fpr; int fpscr; } ;
struct pcb {int pcb_flags; TYPE_3__ pcb_vec; TYPE_2__ pcb_fpu; } ;
struct TYPE_10__ {int mc_len; int * mc_avec; int mc_vrsave; int mc_vscr; int mc_flags; int * mc_vsxfpreg; int * mc_fpreg; int mc_fpscr; scalar_t__* mc_gpr; int mc_frame; int mc_vers; } ;
typedef TYPE_4__ mcontext_t ;
struct TYPE_7__ {int * vsr; int fpr; } ;


 int GET_MC_CLEAR_RET ;
 int KASSERT (int,char*) ;
 int PCB_FPREGS ;
 int PCB_FPU ;
 int PCB_VEC ;
 int PCB_VSX ;
 int _MC_AV_VALID ;
 int _MC_FP_VALID ;
 int _MC_VERSION ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int save_fpu (struct thread*) ;
 int save_vec (struct thread*) ;

__attribute__((used)) static int
grab_mcontext(struct thread *td, mcontext_t *mcp, int flags)
{
 struct pcb *pcb;
 int i;

 pcb = td->td_pcb;

 memset(mcp, 0, sizeof(mcontext_t));

 mcp->mc_vers = _MC_VERSION;
 mcp->mc_flags = 0;
 memcpy(&mcp->mc_frame, td->td_frame, sizeof(struct trapframe));
 if (flags & GET_MC_CLEAR_RET) {
  mcp->mc_gpr[3] = 0;
  mcp->mc_gpr[4] = 0;
 }







 if (pcb->pcb_flags & PCB_FPREGS) {
  if (pcb->pcb_flags & PCB_FPU) {
   KASSERT(td == curthread,
    ("get_mcontext: fp save not curthread"));
   critical_enter();
   save_fpu(td);
   critical_exit();
  }
  mcp->mc_flags |= _MC_FP_VALID;
  memcpy(&mcp->mc_fpscr, &pcb->pcb_fpu.fpscr, sizeof(double));
  for (i = 0; i < 32; i++)
   memcpy(&mcp->mc_fpreg[i], &pcb->pcb_fpu.fpr[i].fpr,
       sizeof(double));
 }

 if (pcb->pcb_flags & PCB_VSX) {
  for (i = 0; i < 32; i++)
   memcpy(&mcp->mc_vsxfpreg[i],
       &pcb->pcb_fpu.fpr[i].vsr[2], sizeof(double));
 }





 if (pcb->pcb_flags & PCB_VEC) {
  KASSERT(td == curthread,
   ("get_mcontext: fp save not curthread"));
  critical_enter();
  save_vec(td);
  critical_exit();
  mcp->mc_flags |= _MC_AV_VALID;
  mcp->mc_vscr = pcb->pcb_vec.vscr;
  mcp->mc_vrsave = pcb->pcb_vec.vrsave;
  memcpy(mcp->mc_avec, pcb->pcb_vec.vr, sizeof(mcp->mc_avec));
 }

 mcp->mc_len = sizeof(*mcp);

 return (0);
}
