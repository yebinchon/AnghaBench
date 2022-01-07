
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct rfork_args {int flags; } ;
struct fork_req {int fr_flags; int* fr_pidp; int fr_flags2; } ;
typedef int fr ;


 int AUDIT_ARG_FFLAGS (int) ;
 int EINVAL ;
 int FR2_DROPSIG_CAUGHT ;
 int RFFDG ;
 int RFKERNELONLY ;
 int RFMEM ;
 int RFPPWAIT ;
 int RFPROC ;
 int RFSPAWN ;
 int bzero (struct fork_req*,int) ;
 int fork1 (struct thread*,struct fork_req*) ;

int
sys_rfork(struct thread *td, struct rfork_args *uap)
{
 struct fork_req fr;
 int error, pid;


 if ((uap->flags & RFKERNELONLY) != 0)
  return (EINVAL);

 if ((uap->flags & RFSPAWN) != 0 && uap->flags != RFSPAWN)
  return (EINVAL);

 AUDIT_ARG_FFLAGS(uap->flags);
 bzero(&fr, sizeof(fr));
 if ((uap->flags & RFSPAWN) != 0) {
  fr.fr_flags = RFFDG | RFPROC | RFPPWAIT | RFMEM;
  fr.fr_flags2 = FR2_DROPSIG_CAUGHT;
 } else {
  fr.fr_flags = uap->flags;
 }
 fr.fr_pidp = &pid;
 error = fork1(td, &fr);
 if (error == 0) {
  td->td_retval[0] = pid;
  td->td_retval[1] = 0;
 }
 return (error);
}
