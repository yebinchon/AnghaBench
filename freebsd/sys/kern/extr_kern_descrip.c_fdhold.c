
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct filedesc* p_fd; } ;
struct filedesc {int fd_holdcnt; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int refcount_acquire (int *) ;

__attribute__((used)) static struct filedesc *
fdhold(struct proc *p)
{
 struct filedesc *fdp;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 fdp = p->p_fd;
 if (fdp != ((void*)0))
  refcount_acquire(&fdp->fd_holdcnt);
 return (fdp);
}
