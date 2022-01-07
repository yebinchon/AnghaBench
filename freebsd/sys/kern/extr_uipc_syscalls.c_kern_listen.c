
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct socket {int dummy; } ;
struct file {struct socket* f_data; } ;


 int AUDIT_ARG_FD (int) ;
 int cap_listen_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;
 int mac_socket_check_listen (int ,struct socket*) ;
 int solisten (struct socket*,int,struct thread*) ;

int
kern_listen(struct thread *td, int s, int backlog)
{
 struct socket *so;
 struct file *fp;
 int error;

 AUDIT_ARG_FD(s);
 error = getsock_cap(td, s, &cap_listen_rights,
     &fp, ((void*)0), ((void*)0));
 if (error == 0) {
  so = fp->f_data;




   error = solisten(so, backlog, td);
  fdrop(fp, td);
 }
 return (error);
}
