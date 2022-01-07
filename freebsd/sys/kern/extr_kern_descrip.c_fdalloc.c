
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct proc {struct filedesc* p_fd; } ;
struct filedesc {int fd_freefile; int fd_nfiles; TYPE_1__* fd_ofiles; } ;
struct TYPE_2__ {int * fde_file; } ;


 int EMFILE ;
 int FILEDESC_XLOCK_ASSERT (struct filedesc*) ;
 int KASSERT (int,char*) ;
 scalar_t__ RACCT_ENABLED () ;
 int RACCT_NOFILE ;
 int fd_first_free (struct filedesc*,int,int) ;
 int fdgrowtable_exp (struct filedesc*,int) ;
 int fdisused (struct filedesc*,int) ;
 int fdused (struct filedesc*,int) ;
 int getmaxfd (struct thread*) ;
 int min (int,int) ;
 int racct_set_unlocked (struct proc*,int ,int) ;

int
fdalloc(struct thread *td, int minfd, int *result)
{
 struct proc *p = td->td_proc;
 struct filedesc *fdp = p->p_fd;
 int fd, maxfd, allocfd;




 FILEDESC_XLOCK_ASSERT(fdp);

 if (fdp->fd_freefile > minfd)
  minfd = fdp->fd_freefile;

 maxfd = getmaxfd(td);





 fd = fd_first_free(fdp, minfd, fdp->fd_nfiles);
 if (fd >= maxfd)
  return (EMFILE);
 if (fd >= fdp->fd_nfiles) {
  allocfd = min(fd * 2, maxfd);
  fdgrowtable_exp(fdp, allocfd);
 }





 KASSERT(fd >= 0 && fd < min(maxfd, fdp->fd_nfiles),
     ("invalid descriptor %d", fd));
 KASSERT(!fdisused(fdp, fd),
     ("fd_first_free() returned non-free descriptor"));
 KASSERT(fdp->fd_ofiles[fd].fde_file == ((void*)0),
     ("file descriptor isn't free"));
 fdused(fdp, fd);
 *result = fd;
 return (0);
}
