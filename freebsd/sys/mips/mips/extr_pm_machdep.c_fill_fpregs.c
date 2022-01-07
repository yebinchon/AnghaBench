
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
struct fpreg {int * r_regs; } ;
struct TYPE_4__ {int fpu_id; } ;
struct TYPE_3__ {int f0; } ;


 size_t FIR_NUM ;
 int MipsSaveCurFPState (struct thread*) ;
 struct thread* PCPU_GET (int ) ;
 TYPE_2__ cpuinfo ;
 int fpcurthread ;
 int memcpy (struct fpreg*,int *,int) ;

int
fill_fpregs(struct thread *td, struct fpreg *fpregs)
{
 if (td == PCPU_GET(fpcurthread))
  MipsSaveCurFPState(td);
 memcpy(fpregs, &td->td_frame->f0, sizeof(struct fpreg));
 fpregs->r_regs[FIR_NUM] = cpuinfo.fpu_id;
 return 0;
}
