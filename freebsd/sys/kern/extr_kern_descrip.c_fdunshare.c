
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {struct filedesc* p_fd; } ;
struct filedesc {int fd_refcnt; } ;


 struct filedesc* fdcopy (struct filedesc*) ;
 int fdescfree (struct thread*) ;

void
fdunshare(struct thread *td)
{
 struct filedesc *tmp;
 struct proc *p = td->td_proc;

 if (p->p_fd->fd_refcnt == 1)
  return;

 tmp = fdcopy(p->p_fd);
 fdescfree(td);
 p->p_fd = tmp;
}
