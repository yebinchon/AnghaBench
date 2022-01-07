
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int* td_retval; int td_ucred; TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;
typedef int fd_mask ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 scalar_t__ NFDBITS ;
 int fdrop (struct file*,struct thread*) ;
 int fo_poll (struct file*,int,int ,struct thread*) ;
 int getselfd_cap (struct filedesc*,int,struct file**) ;
 int imin (scalar_t__,int) ;
 int selfdalloc (struct thread*,void*) ;
 int selflags (int**,int,int) ;
 scalar_t__ selsetbits (int**,int**,int,int,int) ;

__attribute__((used)) static int
selscan(struct thread *td, fd_mask **ibits, fd_mask **obits, int nfd)
{
 struct filedesc *fdp;
 struct file *fp;
 fd_mask bit;
 int ev, flags, end, fd;
 int n, idx;
 int error;

 fdp = td->td_proc->p_fd;
 n = 0;
 for (idx = 0, fd = 0; fd < nfd; idx++) {
  end = imin(fd + NFDBITS, nfd);
  for (bit = 1; fd < end; bit <<= 1, fd++) {

   flags = selflags(ibits, idx, bit);
   if (flags == 0)
    continue;
   error = getselfd_cap(fdp, fd, &fp);
   if (error)
    return (error);
   selfdalloc(td, (void *)(uintptr_t)fd);
   ev = fo_poll(fp, flags, td->td_ucred, td);
   fdrop(fp, td);
   if (ev != 0)
    n += selsetbits(ibits, obits, idx, bit, ev);
  }
 }

 td->td_retval[0] = n;
 return (0);
}
