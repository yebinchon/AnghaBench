
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct reg32 {int * r_regs; } ;
struct reg {int * r_regs; } ;


 unsigned int NUMSAVEREGS ;
 int fill_regs (struct thread*,struct reg*) ;

int
fill_regs32(struct thread *td, struct reg32 *regs)
{
 struct reg r;
 unsigned i;
 int error;

 error = fill_regs(td, &r);
 if (error != 0)
  return (error);

 for (i = 0; i < NUMSAVEREGS; i++)
  regs->r_regs[i] = r.r_regs[i];

 return (0);
}
