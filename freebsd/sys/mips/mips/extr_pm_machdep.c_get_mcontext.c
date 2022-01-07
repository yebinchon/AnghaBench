
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trapframe {int mulhi; int mullo; int pc; int f0; int zero; int sp; } ;
struct TYPE_5__ {int md_flags; int md_tls; } ;
struct thread {TYPE_1__ td_md; struct trapframe* td_frame; } ;
struct TYPE_6__ {int mc_fpused; int mc_tls; int mulhi; int mullo; int mc_pc; scalar_t__* mc_regs; int mc_fpregs; int mc_onstack; } ;
typedef TYPE_2__ mcontext_t ;
struct TYPE_7__ {int td_proc; } ;


 size_t A3 ;
 int GET_MC_CLEAR_RET ;
 int MDTD_FPUSED ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 size_t V0 ;
 size_t V1 ;
 int bcopy (void*,void*,int) ;
 TYPE_4__* curthread ;
 int sigonstack (int ) ;

int
get_mcontext(struct thread *td, mcontext_t *mcp, int flags)
{
 struct trapframe *tp;

 tp = td->td_frame;
 PROC_LOCK(curthread->td_proc);
 mcp->mc_onstack = sigonstack(tp->sp);
 PROC_UNLOCK(curthread->td_proc);
 bcopy((void *)&td->td_frame->zero, (void *)&mcp->mc_regs,
     sizeof(mcp->mc_regs));

 mcp->mc_fpused = td->td_md.md_flags & MDTD_FPUSED;
 if (mcp->mc_fpused) {
  bcopy((void *)&td->td_frame->f0, (void *)&mcp->mc_fpregs,
      sizeof(mcp->mc_fpregs));
 }
 if (flags & GET_MC_CLEAR_RET) {
  mcp->mc_regs[V0] = 0;
  mcp->mc_regs[V1] = 0;
  mcp->mc_regs[A3] = 0;
 }

 mcp->mc_pc = td->td_frame->pc;
 mcp->mullo = td->td_frame->mullo;
 mcp->mulhi = td->td_frame->mulhi;
 mcp->mc_tls = td->td_md.md_tls;
 return (0);
}
