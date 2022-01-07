
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {scalar_t__ f_type; } ;
typedef int pid_t ;
typedef int cap_rights_t ;


 scalar_t__ DTYPE_PROCDESC ;
 int EBADF ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int procdesc_pid (struct file*) ;

int
kern_pdgetpid(struct thread *td, int fd, cap_rights_t *rightsp, pid_t *pidp)
{
 struct file *fp;
 int error;

 error = fget(td, fd, rightsp, &fp);
 if (error)
  return (error);
 if (fp->f_type != DTYPE_PROCDESC) {
  error = EBADF;
  goto out;
 }
 *pidp = procdesc_pid(fp);
out:
 fdrop(fp, td);
 return (error);
}
