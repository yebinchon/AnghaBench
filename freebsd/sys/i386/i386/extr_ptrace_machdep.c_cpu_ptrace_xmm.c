
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_3__ {int en_mxcsr; } ;
struct savexmm {TYPE_1__ sv_env; } ;
struct TYPE_4__ {struct savexmm sv_xmm; } ;


 int EINVAL ;







 int copyin (void*,struct savexmm*,int) ;
 int copyout (struct savexmm*,void*,int) ;
 int cpu_fxsr ;
 int cpu_mxcsr_mask ;
 int cpu_ptrace_xstate (struct thread*,int,void*,int) ;
 TYPE_2__* get_pcb_user_save_td (struct thread*) ;
 int npxgetregs (struct thread*) ;

__attribute__((used)) static int
cpu_ptrace_xmm(struct thread *td, int req, void *addr, int data)
{
 struct savexmm *fpstate;
 int error;

 if (!cpu_fxsr)
  return (EINVAL);

 fpstate = &get_pcb_user_save_td(td)->sv_xmm;
 switch (req) {
 case 134:
  npxgetregs(td);
  error = copyout(fpstate, addr, sizeof(*fpstate));
  break;

 case 130:
  npxgetregs(td);
  error = copyin(addr, fpstate, sizeof(*fpstate));
  fpstate->sv_env.en_mxcsr &= cpu_mxcsr_mask;
  break;

 case 131:
 case 128:
 case 132:
 case 133:
 case 129:
  error = cpu_ptrace_xstate(td, req, addr, data);
  break;

 default:
  return (EINVAL);
 }

 return (error);
}
