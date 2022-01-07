
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fpreg {int dummy; } ;


 int PROC_ACTION (int ) ;
 int set_fpregs (struct thread*,struct fpreg*) ;

int
proc_write_fpregs(struct thread *td, struct fpreg *fpregs)
{

 PROC_ACTION(set_fpregs(td, fpregs));
}
