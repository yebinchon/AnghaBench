
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct procdesc {struct proc* pd_proc; } ;
struct proc {int dummy; } ;
struct file {scalar_t__ f_type; struct procdesc* f_data; } ;
typedef int cap_rights_t ;


 scalar_t__ DTYPE_PROCDESC ;
 int EBADF ;
 int ESRCH ;
 int PROC_LOCK (struct proc*) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int proctree_lock ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

int
procdesc_find(struct thread *td, int fd, cap_rights_t *rightsp,
    struct proc **p)
{
 struct procdesc *pd;
 struct file *fp;
 int error;

 error = fget(td, fd, rightsp, &fp);
 if (error)
  return (error);
 if (fp->f_type != DTYPE_PROCDESC) {
  error = EBADF;
  goto out;
 }
 pd = fp->f_data;
 sx_slock(&proctree_lock);
 if (pd->pd_proc != ((void*)0)) {
  *p = pd->pd_proc;
  PROC_LOCK(*p);
 } else
  error = ESRCH;
 sx_sunlock(&proctree_lock);
out:
 fdrop(fp, td);
 return (error);
}
