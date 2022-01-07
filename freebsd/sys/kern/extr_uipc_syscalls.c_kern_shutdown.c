
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct socket {int dummy; } ;
struct file {struct socket* f_data; } ;
struct TYPE_2__ {scalar_t__ p_osrel; } ;


 int AUDIT_ARG_FD (int) ;
 int ENOTCONN ;
 scalar_t__ P_OSREL_SHUTDOWN_ENOTCONN ;
 int cap_shutdown_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;
 int soshutdown (struct socket*,int) ;

int
kern_shutdown(struct thread *td, int s, int how)
{
 struct socket *so;
 struct file *fp;
 int error;

 AUDIT_ARG_FD(s);
 error = getsock_cap(td, s, &cap_shutdown_rights,
     &fp, ((void*)0), ((void*)0));
 if (error == 0) {
  so = fp->f_data;
  error = soshutdown(so, how);






  if (error == ENOTCONN &&
      td->td_proc->p_osrel < P_OSREL_SHUTDOWN_ENOTCONN)
   error = 0;
  fdrop(fp, td);
 }
 return (error);
}
