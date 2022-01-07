
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int * fd_jdir; int * fd_rdir; int * fd_cdir; } ;


 int curthread ;
 int fdescfree_fds (int ,struct filedesc*,int ) ;
 int vrele (int *) ;

void
fdescfree_remapped(struct filedesc *fdp)
{

 if (fdp->fd_cdir != ((void*)0))
  vrele(fdp->fd_cdir);
 if (fdp->fd_rdir != ((void*)0))
  vrele(fdp->fd_rdir);
 if (fdp->fd_jdir != ((void*)0))
  vrele(fdp->fd_jdir);

 fdescfree_fds(curthread, fdp, 0);
}
