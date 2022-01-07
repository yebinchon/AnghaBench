
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct file {struct socket* f_data; } ;


 int AT_FDCWD ;
 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_SOCKADDR (struct thread*,int,struct sockaddr*) ;
 int ECAPMODE ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_STRUCT ;
 int cap_bind_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;
 int ktrsockaddr (struct sockaddr*) ;
 int mac_socket_check_bind (int ,struct socket*,struct sockaddr*) ;
 int sobind (struct socket*,struct sockaddr*,struct thread*) ;
 int sobindat (int,struct socket*,struct sockaddr*,struct thread*) ;

int
kern_bindat(struct thread *td, int dirfd, int fd, struct sockaddr *sa)
{
 struct socket *so;
 struct file *fp;
 int error;






 AUDIT_ARG_FD(fd);
 AUDIT_ARG_SOCKADDR(td, dirfd, sa);
 error = getsock_cap(td, fd, &cap_bind_rights,
     &fp, ((void*)0), ((void*)0));
 if (error != 0)
  return (error);
 so = fp->f_data;
  if (dirfd == AT_FDCWD)
   error = sobind(so, sa, td);
  else
   error = sobindat(dirfd, so, sa, td);



 fdrop(fp, td);
 return (error);
}
