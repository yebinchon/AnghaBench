
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct procdesc {int pd_flags; int pd_selinfo; } ;
struct file {struct procdesc* f_data; } ;


 int PDF_EXITED ;
 int PDF_SELECTED ;
 int POLLHUP ;
 int PROCDESC_LOCK (struct procdesc*) ;
 int PROCDESC_UNLOCK (struct procdesc*) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
procdesc_poll(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
 struct procdesc *pd;
 int revents;

 revents = 0;
 pd = fp->f_data;
 PROCDESC_LOCK(pd);
 if (pd->pd_flags & PDF_EXITED)
  revents |= POLLHUP;
 if (revents == 0) {
  selrecord(td, &pd->pd_selinfo);
  pd->pd_flags |= PDF_SELECTED;
 }
 PROCDESC_UNLOCK(pd);
 return (revents);
}
