
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int fd_lastfile; int fd_freefile; } ;


 int FILEDESC_XLOCK_ASSERT (struct filedesc*) ;
 int fdused_init (struct filedesc*,int) ;

__attribute__((used)) static void
fdused(struct filedesc *fdp, int fd)
{

 FILEDESC_XLOCK_ASSERT(fdp);

 fdused_init(fdp, fd);
 if (fd > fdp->fd_lastfile)
  fdp->fd_lastfile = fd;
 if (fd == fdp->fd_freefile)
  fdp->fd_freefile++;
}
