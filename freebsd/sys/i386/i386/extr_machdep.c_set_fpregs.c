
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct save87 {int dummy; } ;
struct fpreg {int dummy; } ;
struct TYPE_2__ {int sv_87; int sv_xmm; } ;


 int bcopy (struct fpreg*,int *,int) ;
 scalar_t__ cpu_fxsr ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_1__* get_pcb_user_save_td (struct thread*) ;
 int npx_set_fpregs_xmm (struct save87*,int *) ;
 int npxuserinited (struct thread*) ;

int
set_fpregs(struct thread *td, struct fpreg *fpregs)
{

 critical_enter();
 if (cpu_fxsr)
  npx_set_fpregs_xmm((struct save87 *)fpregs,
      &get_pcb_user_save_td(td)->sv_xmm);
 else
  bcopy(fpregs, &get_pcb_user_save_td(td)->sv_87,
      sizeof(*fpregs));
 npxuserinited(td);
 critical_exit();
 return (0);
}
