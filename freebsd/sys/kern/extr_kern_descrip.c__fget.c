
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct file {int f_flag; int * f_ops; } ;
typedef int seqc_t ;
typedef int cap_rights_t ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int EBADF ;



 int KASSERT (int ,char*) ;
 int badfileops ;
 int fdrop (struct file*,struct thread*) ;
 int fget_unlocked (struct filedesc*,int,int *,struct file**,int *) ;

__attribute__((used)) static __inline int
_fget(struct thread *td, int fd, struct file **fpp, int flags,
    cap_rights_t *needrightsp, seqc_t *seqp)
{
 struct filedesc *fdp;
 struct file *fp;
 int error;

 *fpp = ((void*)0);
 fdp = td->td_proc->p_fd;
 error = fget_unlocked(fdp, fd, needrightsp, &fp, seqp);
 if (error != 0)
  return (error);
 if (fp->f_ops == &badfileops) {
  fdrop(fp, td);
  return (EBADF);
 }




 error = 0;
 switch (flags) {
 case 129:
 case 128:
  if ((fp->f_flag & flags) == 0)
   error = EBADF;
  break;
 case 130:
      if ((fp->f_flag & (129 | 130)) == 0 ||
      ((fp->f_flag & 128) != 0))
   error = EBADF;
  break;
 case 0:
  break;
 default:
  KASSERT(0, ("wrong flags"));
 }

 if (error != 0) {
  fdrop(fp, td);
  return (error);
 }

 *fpp = fp;
 return (0);
}
