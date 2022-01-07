
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; int td_proc; } ;
struct file {int f_flag; } ;
typedef int off_t ;


 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_FILE (int ,struct file*) ;
 int EINVAL ;
 int FWRITE ;
 int cap_ftruncate_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int fo_truncate (struct file*,int ,int ,struct thread*) ;

int
kern_ftruncate(struct thread *td, int fd, off_t length)
{
 struct file *fp;
 int error;

 AUDIT_ARG_FD(fd);
 if (length < 0)
  return (EINVAL);
 error = fget(td, fd, &cap_ftruncate_rights, &fp);
 if (error)
  return (error);
 AUDIT_ARG_FILE(td->td_proc, fp);
 if (!(fp->f_flag & FWRITE)) {
  fdrop(fp, td);
  return (EINVAL);
 }
 error = fo_truncate(fp, length, td->td_ucred, td);
 fdrop(fp, td);
 return (error);
}
