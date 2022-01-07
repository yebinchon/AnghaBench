
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct file {int dummy; } ;
struct fchown_args {int gid; int uid; int fd; } ;


 int AUDIT_ARG_FD (int ) ;
 int AUDIT_ARG_OWNER (int ,int ) ;
 int cap_fchown_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;
 int fo_chown (struct file*,int ,int ,int ,struct thread*) ;

int
sys_fchown(struct thread *td, struct fchown_args *uap)
{
 struct file *fp;
 int error;

 AUDIT_ARG_FD(uap->fd);
 AUDIT_ARG_OWNER(uap->uid, uap->gid);
 error = fget(td, uap->fd, &cap_fchown_rights, &fp);
 if (error != 0)
  return (error);
 error = fo_chown(fp, uap->uid, uap->gid, td->td_ucred, td);
 fdrop(fp, td);
 return (error);
}
