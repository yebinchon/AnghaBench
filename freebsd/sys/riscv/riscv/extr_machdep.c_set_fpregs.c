
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_sstatus; } ;
struct thread {struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {int pcb_fpflags; int pcb_fcsr; int pcb_x; } ;
struct fpreg {int fp_fcsr; int fp_x; } ;


 int PCB_FP_STARTED ;
 int SSTATUS_FS_CLEAN ;
 int SSTATUS_FS_MASK ;
 int memcpy (int ,int ,int) ;

int
set_fpregs(struct thread *td, struct fpreg *regs)
{
 return (0);
}
