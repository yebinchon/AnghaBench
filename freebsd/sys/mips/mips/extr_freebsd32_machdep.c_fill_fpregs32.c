
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fpreg32 {int * r_regs; } ;
struct fpreg {int * r_regs; } ;


 unsigned int NUMFPREGS ;
 int fill_fpregs (struct thread*,struct fpreg*) ;

int
fill_fpregs32(struct thread *td, struct fpreg32 *fpregs)
{
 struct fpreg fp;
 unsigned i;
 int error;

 error = fill_fpregs(td, &fp);
 if (error != 0)
  return (error);

 for (i = 0; i < NUMFPREGS; i++)
  fpregs->r_regs[i] = fp.r_regs[i];

 return (0);
}
