
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct pdfork_args {int fdp; int flags; } ;
struct fork_req {int fr_flags; int* fr_pidp; int* fr_pd_fd; int fr_pd_flags; } ;
typedef int fr ;
typedef int fd ;


 int RFFDG ;
 int RFPROC ;
 int RFPROCDESC ;
 int bzero (struct fork_req*,int) ;
 int copyout (int*,int ,int) ;
 int fork1 (struct thread*,struct fork_req*) ;

int
sys_pdfork(struct thread *td, struct pdfork_args *uap)
{
 struct fork_req fr;
 int error, fd, pid;

 bzero(&fr, sizeof(fr));
 fr.fr_flags = RFFDG | RFPROC | RFPROCDESC;
 fr.fr_pidp = &pid;
 fr.fr_pd_fd = &fd;
 fr.fr_pd_flags = uap->flags;





 error = fork1(td, &fr);
 if (error == 0) {
  td->td_retval[0] = pid;
  td->td_retval[1] = 0;
  error = copyout(&fd, uap->fdp, sizeof(fd));
 }
 return (error);
}
