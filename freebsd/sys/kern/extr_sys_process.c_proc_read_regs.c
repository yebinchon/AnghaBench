
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct reg {int dummy; } ;


 int PROC_ACTION (int ) ;
 int fill_regs (struct thread*,struct reg*) ;

int
proc_read_regs(struct thread *td, struct reg *regs)
{

 PROC_ACTION(fill_regs(td, regs));
}
