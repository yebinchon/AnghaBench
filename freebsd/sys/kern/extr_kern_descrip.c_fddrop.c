
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int fd_holdcnt; } ;


 int FILEDESC_LOCK_DESTROY (struct filedesc*) ;
 int filedesc0_zone ;
 scalar_t__ refcount_release (int*) ;
 int uma_zfree (int ,struct filedesc*) ;

__attribute__((used)) static void
fddrop(struct filedesc *fdp)
{

 if (fdp->fd_holdcnt > 1) {
  if (refcount_release(&fdp->fd_holdcnt) == 0)
   return;
 }

 FILEDESC_LOCK_DESTROY(fdp);
 uma_zfree(filedesc0_zone, fdp);
}
