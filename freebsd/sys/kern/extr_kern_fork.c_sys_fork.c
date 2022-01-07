
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct fork_req {int fr_flags; int* fr_pidp; } ;
struct fork_args {int dummy; } ;
typedef int fr ;


 int RFFDG ;
 int RFPROC ;
 int bzero (struct fork_req*,int) ;
 int fork1 (struct thread*,struct fork_req*) ;

int
sys_fork(struct thread *td, struct fork_args *uap)
{
 struct fork_req fr;
 int error, pid;

 bzero(&fr, sizeof(fr));
 fr.fr_flags = RFFDG | RFPROC;
 fr.fr_pidp = &pid;
 error = fork1(td, &fr);
 if (error == 0) {
  td->td_retval[0] = pid;
  td->td_retval[1] = 0;
 }
 return (error);
}
