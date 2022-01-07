
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct posix_openpt_args {int flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FFLAGS (int) ;
 int O_ACCMODE ;
 int O_CLOEXEC ;
 int O_NOCTTY ;
 int O_RDWR ;
 int falloc (struct thread*,struct file**,int*,int) ;
 int fdclose (struct thread*,struct file*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int pts_alloc (int ,struct thread*,struct file*) ;

int
sys_posix_openpt(struct thread *td, struct posix_openpt_args *uap)
{
 int error, fd;
 struct file *fp;





 if (uap->flags & ~(O_RDWR|O_NOCTTY|O_CLOEXEC))
  return (EINVAL);

 error = falloc(td, &fp, &fd, uap->flags);
 if (error)
  return (error);


 error = pts_alloc(FFLAGS(uap->flags & O_ACCMODE), td, fp);
 if (error != 0) {
  fdclose(td, fp, fd);
  fdrop(fp, td);
  return (error);
 }


 td->td_retval[0] = fd;
 fdrop(fp, td);

 return (0);
}
