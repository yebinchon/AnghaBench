
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct file {int * f_ops; int * f_vnode; } ;
typedef int cap_rights_t ;
struct TYPE_2__ {int p_fd; } ;


 int EINVAL ;
 int badfileops ;
 int fdrop (struct file*,struct thread*) ;
 int fget_unlocked (int ,int,int *,struct file**,int *) ;

int
getvnode(struct thread *td, int fd, cap_rights_t *rightsp, struct file **fpp)
{
 struct file *fp;
 int error;

 error = fget_unlocked(td->td_proc->p_fd, fd, rightsp, &fp, ((void*)0));
 if (error != 0)
  return (error);
 if (fp->f_vnode == ((void*)0) || fp->f_ops == &badfileops) {
  fdrop(fp, td);
  return (EINVAL);
 }
 *fpp = fp;
 return (0);
}
