
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filedesc {int * fd_rdir; int * fd_cdir; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 TYPE_1__* curproc ;
 void* rootvnode ;
 int vrefact (void*) ;

void
pwd_ensure_dirs(void)
{
 struct filedesc *fdp;

 fdp = curproc->p_fd;
 FILEDESC_XLOCK(fdp);
 if (fdp->fd_cdir == ((void*)0)) {
  fdp->fd_cdir = rootvnode;
  vrefact(rootvnode);
 }
 if (fdp->fd_rdir == ((void*)0)) {
  fdp->fd_rdir = rootvnode;
  vrefact(rootvnode);
 }
 FILEDESC_XUNLOCK(fdp);
}
