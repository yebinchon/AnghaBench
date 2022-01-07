
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfork_args {int dummy; } ;
struct thread {int* td_retval; } ;
struct fork_req {int fr_flags; int* fr_pidp; } ;
typedef int fr ;


 int RFFDG ;
 int RFMEM ;
 int RFPPWAIT ;
 int RFPROC ;
 int bzero (struct fork_req*,int) ;
 int fork1 (struct thread*,struct fork_req*) ;

int
sys_vfork(struct thread *td, struct vfork_args *uap)
{
 struct fork_req fr;
 int error, pid;

 bzero(&fr, sizeof(fr));
 fr.fr_flags = RFFDG | RFPROC | RFPPWAIT | RFMEM;
 fr.fr_pidp = &pid;
 error = fork1(td, &fr);
 if (error == 0) {
  td->td_retval[0] = pid;
  td->td_retval[1] = 0;
 }
 return (error);
}
