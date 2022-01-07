
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct file {int dummy; } ;
struct fchmod_args {int mode; int fd; } ;


 int AUDIT_ARG_FD (int ) ;
 int AUDIT_ARG_MODE (int ) ;
 int cap_fchmod_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int fo_chmod (struct file*,int ,int ,struct thread*) ;

int
sys_fchmod(struct thread *td, struct fchmod_args *uap)
{
 struct file *fp;
 int error;

 AUDIT_ARG_FD(uap->fd);
 AUDIT_ARG_MODE(uap->mode);

 error = fget(td, uap->fd, &cap_fchmod_rights, &fp);
 if (error != 0)
  return (error);
 error = fo_chmod(fp, uap->mode, td->td_ucred, td);
 fdrop(fp, td);
 return (error);
}
