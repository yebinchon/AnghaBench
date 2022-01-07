
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_frame; } ;
struct reg {int dummy; } ;


 int bcopy (int ,struct reg*,int) ;

int
fill_regs(struct thread *td, struct reg *regs)
{

 bcopy(td->td_frame, regs, sizeof(*regs));
 return (0);
}
