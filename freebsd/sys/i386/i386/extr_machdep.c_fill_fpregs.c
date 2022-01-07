
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_proc; } ;
struct save87 {int dummy; } ;
struct fpreg {int dummy; } ;
struct TYPE_2__ {int sv_87; int sv_xmm; } ;


 int KASSERT (int,char*) ;
 scalar_t__ P_SHOULDSTOP (int ) ;
 scalar_t__ TD_IS_SUSPENDED (struct thread*) ;
 int bcopy (int *,struct fpreg*,int) ;
 scalar_t__ cpu_fxsr ;
 struct thread* curthread ;
 TYPE_1__* get_pcb_user_save_td (struct thread*) ;
 int npx_fill_fpregs_xmm (int *,struct save87*) ;
 int npxgetregs (struct thread*) ;

int
fill_fpregs(struct thread *td, struct fpreg *fpregs)
{

 KASSERT(td == curthread || TD_IS_SUSPENDED(td) ||
     P_SHOULDSTOP(td->td_proc),
     ("not suspended thread %p", td));
 npxgetregs(td);
 if (cpu_fxsr)
  npx_fill_fpregs_xmm(&get_pcb_user_save_td(td)->sv_xmm,
      (struct save87 *)fpregs);
 else
  bcopy(&get_pcb_user_save_td(td)->sv_87, fpregs,
      sizeof(*fpregs));
 return (0);
}
