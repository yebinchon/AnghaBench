
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pdgetpid_args {int pidp; int fd; } ;
typedef int pid_t ;
typedef int pid ;


 int AUDIT_ARG_FD (int ) ;
 int cap_pdgetpid_rights ;
 int copyout (int *,int ,int) ;
 int kern_pdgetpid (struct thread*,int ,int *,int *) ;

int
sys_pdgetpid(struct thread *td, struct pdgetpid_args *uap)
{
 pid_t pid;
 int error;

 AUDIT_ARG_FD(uap->fd);
 error = kern_pdgetpid(td, uap->fd, &cap_pdgetpid_rights, &pid);
 if (error == 0)
  error = copyout(&pid, uap->pidp, sizeof(pid));
 return (error);
}
