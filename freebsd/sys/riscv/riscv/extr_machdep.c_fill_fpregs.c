
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_fpflags; int pcb_fcsr; int pcb_x; } ;
struct fpreg {int fp_fcsr; int fp_x; } ;


 int PCB_FP_STARTED ;
 struct thread* curthread ;
 int fpe_state_save (struct thread*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct fpreg*,int ,int) ;

int
fill_fpregs(struct thread *td, struct fpreg *regs)
{
  memset(regs, 0, sizeof(*regs));

 return (0);
}
