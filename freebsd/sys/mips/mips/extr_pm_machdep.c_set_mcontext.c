
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int mulhi; int mullo; int pc; int f0; int zero; } ;
struct TYPE_4__ {int md_flags; int md_tls; } ;
struct thread {TYPE_1__ td_md; struct trapframe* td_frame; } ;
struct TYPE_5__ {int mc_fpused; int mc_tls; int mulhi; int mullo; int mc_pc; int mc_fpregs; int mc_regs; } ;
typedef TYPE_2__ mcontext_t ;


 int MDTD_FPUSED ;
 int bcopy (void*,void*,int) ;

int
set_mcontext(struct thread *td, mcontext_t *mcp)
{
 struct trapframe *tp;

 tp = td->td_frame;
 bcopy((void *)&mcp->mc_regs, (void *)&td->td_frame->zero,
     sizeof(mcp->mc_regs));

 td->td_md.md_flags = mcp->mc_fpused & MDTD_FPUSED;
 if (mcp->mc_fpused) {
  bcopy((void *)&mcp->mc_fpregs, (void *)&td->td_frame->f0,
      sizeof(mcp->mc_fpregs));
 }
 td->td_frame->pc = mcp->mc_pc;
 td->td_frame->mullo = mcp->mullo;
 td->td_frame->mulhi = mcp->mulhi;
 td->td_md.md_tls = mcp->mc_tls;


 return (0);
}
