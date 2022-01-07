
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct thread {int* td_retval; int td_ucred; TYPE_1__* td_proc; } ;
struct pollfd {size_t fd; int revents; int events; } ;
struct filedesc {size_t fd_lastfile; TYPE_2__* fd_ofiles; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct file* fde_file; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;


 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int POLLHUP ;
 void* POLLNVAL ;
 int POLLOUT ;
 scalar_t__ cap_check (int ,int *) ;
 int cap_event_rights ;
 int cap_rights (struct filedesc*,size_t) ;
 int fo_poll (struct file*,int ,int ,struct thread*) ;
 int selfdalloc (struct thread*,struct pollfd*) ;

__attribute__((used)) static int
pollscan(struct thread *td, struct pollfd *fds, u_int nfd)
{
 struct filedesc *fdp = td->td_proc->p_fd;
 struct file *fp;
 int i, n = 0;

 FILEDESC_SLOCK(fdp);
 for (i = 0; i < nfd; i++, fds++) {
  if (fds->fd > fdp->fd_lastfile) {
   fds->revents = POLLNVAL;
   n++;
  } else if (fds->fd < 0) {
   fds->revents = 0;
  } else {
   fp = fdp->fd_ofiles[fds->fd].fde_file;




   if (fp == ((void*)0))

   {
    fds->revents = POLLNVAL;
    n++;
   } else {




    selfdalloc(td, fds);
    fds->revents = fo_poll(fp, fds->events,
        td->td_ucred, td);




    if ((fds->revents & POLLHUP) != 0)
     fds->revents &= ~POLLOUT;

    if (fds->revents != 0)
     n++;
   }
  }
 }
 FILEDESC_SUNLOCK(fdp);
 td->td_retval[0] = n;
 return (0);
}
