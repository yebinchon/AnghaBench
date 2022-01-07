
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; } ;
struct linux_pt_fpxreg {int dummy; } ;
struct TYPE_4__ {int p_flag; } ;
struct TYPE_3__ {int sv_xmm; } ;


 int EIO ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (TYPE_2__*,int ) ;
 int P_INMEM ;
 int bcopy (struct linux_pt_fpxreg*,int *,int) ;
 scalar_t__ cpu_fxsr ;
 TYPE_1__* get_pcb_user_save_td (struct thread*) ;

__attribute__((used)) static int
linux_proc_write_fpxregs(struct thread *td, struct linux_pt_fpxreg *fpxregs)
{

 PROC_LOCK_ASSERT(td->td_proc, MA_OWNED);
 if (cpu_fxsr == 0 || (td->td_proc->p_flag & P_INMEM) == 0)
  return (EIO);
 bcopy(fpxregs, &get_pcb_user_save_td(td)->sv_xmm, sizeof(*fpxregs));
 return (0);
}
