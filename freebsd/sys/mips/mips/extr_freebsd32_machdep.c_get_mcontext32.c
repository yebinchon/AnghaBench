
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_5__ {scalar_t__ mc_tls; int mc_fpc_eir; int * mc_fpregs; int mc_fpused; int mulhi; int mullo; int sr; int * mc_regs; int mc_pc; int mc_onstack; } ;
typedef TYPE_1__ mcontext_t ;
struct TYPE_6__ {scalar_t__ mc_tls; int mc_fpc_eir; int * mc_fpregs; int mc_fpused; int mulhi; int mullo; int sr; int * mc_regs; int mc_pc; int mc_onstack; } ;
typedef TYPE_2__ mcontext32_t ;
typedef scalar_t__ int32_t ;


 int get_mcontext (struct thread*,TYPE_1__*,int) ;

__attribute__((used)) static int
get_mcontext32(struct thread *td, mcontext32_t *mcp, int flags)
{
 mcontext_t mcp64;
 unsigned i;
 int error;

 error = get_mcontext(td, &mcp64, flags);
 if (error != 0)
  return (error);

 mcp->mc_onstack = mcp64.mc_onstack;
 mcp->mc_pc = mcp64.mc_pc;
 for (i = 0; i < 32; i++)
  mcp->mc_regs[i] = mcp64.mc_regs[i];
 mcp->sr = mcp64.sr;
 mcp->mullo = mcp64.mullo;
 mcp->mulhi = mcp64.mulhi;
 mcp->mc_fpused = mcp64.mc_fpused;
 for (i = 0; i < 33; i++)
  mcp->mc_fpregs[i] = mcp64.mc_fpregs[i];
 mcp->mc_fpc_eir = mcp64.mc_fpc_eir;
 mcp->mc_tls = (int32_t)(intptr_t)mcp64.mc_tls;

 return (0);
}
