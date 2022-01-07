
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct trapframe {int tf_ss; int tf_esp; int tf_cs; int tf_eip; int tf_ecx; int tf_ebx; int tf_edx; int tf_eax; int tf_eflags; int tf_isp; int tf_ebp; int tf_esi; int tf_edi; int tf_ds; int tf_es; int tf_fs; } ;
struct thread {TYPE_1__* td_pcb; struct trapframe* td_frame; } ;
struct segment_descriptor {int sd_hibase; int sd_lobase; } ;
struct TYPE_7__ {int mc_len; int mc_fsbase; int mc_gsbase; int mc_spare2; scalar_t__ mc_xfpustate_len; scalar_t__ mc_xfpustate; scalar_t__ mc_flags; int mc_ss; int mc_esp; int mc_cs; int mc_eip; int mc_ecx; int mc_ebx; int mc_edx; int mc_eax; int mc_eflags; int mc_isp; int mc_ebp; int mc_esi; int mc_edi; int mc_ds; int mc_es; int mc_fs; int mc_gs; int mc_onstack; } ;
typedef TYPE_2__ mcontext_t ;
struct TYPE_8__ {int td_proc; } ;
struct TYPE_6__ {struct segment_descriptor pcb_gsd; struct segment_descriptor pcb_fsd; int pcb_gs; } ;


 int GET_MC_CLEAR_RET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int PSL_C ;
 int bzero (int ,int) ;
 TYPE_5__* curthread ;
 int get_fpcontext (struct thread*,TYPE_2__*,int *,int ) ;
 int sigonstack (int ) ;

int
get_mcontext(struct thread *td, mcontext_t *mcp, int flags)
{
 struct trapframe *tp;
 struct segment_descriptor *sdp;

 tp = td->td_frame;

 PROC_LOCK(curthread->td_proc);
 mcp->mc_onstack = sigonstack(tp->tf_esp);
 PROC_UNLOCK(curthread->td_proc);
 mcp->mc_gs = td->td_pcb->pcb_gs;
 mcp->mc_fs = tp->tf_fs;
 mcp->mc_es = tp->tf_es;
 mcp->mc_ds = tp->tf_ds;
 mcp->mc_edi = tp->tf_edi;
 mcp->mc_esi = tp->tf_esi;
 mcp->mc_ebp = tp->tf_ebp;
 mcp->mc_isp = tp->tf_isp;
 mcp->mc_eflags = tp->tf_eflags;
 if (flags & GET_MC_CLEAR_RET) {
  mcp->mc_eax = 0;
  mcp->mc_edx = 0;
  mcp->mc_eflags &= ~PSL_C;
 } else {
  mcp->mc_eax = tp->tf_eax;
  mcp->mc_edx = tp->tf_edx;
 }
 mcp->mc_ebx = tp->tf_ebx;
 mcp->mc_ecx = tp->tf_ecx;
 mcp->mc_eip = tp->tf_eip;
 mcp->mc_cs = tp->tf_cs;
 mcp->mc_esp = tp->tf_esp;
 mcp->mc_ss = tp->tf_ss;
 mcp->mc_len = sizeof(*mcp);
 get_fpcontext(td, mcp, ((void*)0), 0);
 sdp = &td->td_pcb->pcb_fsd;
 mcp->mc_fsbase = sdp->sd_hibase << 24 | sdp->sd_lobase;
 sdp = &td->td_pcb->pcb_gsd;
 mcp->mc_gsbase = sdp->sd_hibase << 24 | sdp->sd_lobase;
 mcp->mc_flags = 0;
 mcp->mc_xfpustate = 0;
 mcp->mc_xfpustate_len = 0;
 bzero(mcp->mc_spare2, sizeof(mcp->mc_spare2));
 return (0);
}
