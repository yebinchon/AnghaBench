
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sys_exit_args {int rval; } ;


 int exit1 (struct thread*,int ,int ) ;

void
sys_sys_exit(struct thread *td, struct sys_exit_args *uap)
{

 exit1(td, uap->rval, 0);

}
