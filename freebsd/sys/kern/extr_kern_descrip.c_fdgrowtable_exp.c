
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int fd_nfiles; } ;


 int FILEDESC_XLOCK_ASSERT (struct filedesc*) ;
 int fdgrowtable (struct filedesc*,int) ;

__attribute__((used)) static void
fdgrowtable_exp(struct filedesc *fdp, int nfd)
{
 int nfd1;

 FILEDESC_XLOCK_ASSERT(fdp);

 nfd1 = fdp->fd_nfiles * 2;
 if (nfd1 < nfd)
  nfd1 = nfd;
 fdgrowtable(fdp, nfd1);
}
