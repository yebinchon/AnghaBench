
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct filedesc* p_fd; int * p_fdtol; } ;
struct filedesc {struct vnode* fd_jdir; struct vnode* fd_rdir; struct vnode* fd_cdir; int fd_refcnt; } ;


 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int MPASS (int ) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ RACCT_ENABLED () ;
 int RACCT_NOFILE ;
 int fdclearlocks (struct thread*) ;
 int fdescfree_fds (struct thread*,struct filedesc*,int) ;
 int racct_set_unlocked (struct proc*,int ,int ) ;
 scalar_t__ refcount_release (int *) ;
 int vrele (struct vnode*) ;

void
fdescfree(struct thread *td)
{
 struct proc *p;
 struct filedesc *fdp;
 struct vnode *cdir, *jdir, *rdir;

 p = td->td_proc;
 fdp = p->p_fd;
 MPASS(fdp != ((void*)0));






 if (p->p_fdtol != ((void*)0))
  fdclearlocks(td);

 PROC_LOCK(p);
 p->p_fd = ((void*)0);
 PROC_UNLOCK(p);

 if (refcount_release(&fdp->fd_refcnt) == 0)
  return;

 FILEDESC_XLOCK(fdp);
 cdir = fdp->fd_cdir;
 fdp->fd_cdir = ((void*)0);
 rdir = fdp->fd_rdir;
 fdp->fd_rdir = ((void*)0);
 jdir = fdp->fd_jdir;
 fdp->fd_jdir = ((void*)0);
 FILEDESC_XUNLOCK(fdp);

 if (cdir != ((void*)0))
  vrele(cdir);
 if (rdir != ((void*)0))
  vrele(rdir);
 if (jdir != ((void*)0))
  vrele(jdir);

 fdescfree_fds(td, fdp, 1);
}
