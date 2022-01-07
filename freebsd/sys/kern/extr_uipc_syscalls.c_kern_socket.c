
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; int td_ucred; } ;
struct socket {int dummy; } ;
struct file {int dummy; } ;


 int AUDIT_ARG_SOCKET (int,int,int) ;
 int DTYPE_SOCKET ;
 int FIONBIO ;
 int FNONBLOCK ;
 int FREAD ;
 int FWRITE ;
 int O_CLOEXEC ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int falloc (struct thread*,struct file**,int*,int) ;
 int fdclose (struct thread*,struct file*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct socket*,int *) ;
 int fo_ioctl (struct file*,int ,int*,int ,struct thread*) ;
 int mac_socket_check_create (int ,int,int,int) ;
 int socketops ;
 int socreate (int,struct socket**,int,int,int ,struct thread*) ;

int
kern_socket(struct thread *td, int domain, int type, int protocol)
{
 struct socket *so;
 struct file *fp;
 int fd, error, oflag, fflag;

 AUDIT_ARG_SOCKET(domain, type, protocol);

 oflag = 0;
 fflag = 0;
 if ((type & SOCK_CLOEXEC) != 0) {
  type &= ~SOCK_CLOEXEC;
  oflag |= O_CLOEXEC;
 }
 if ((type & SOCK_NONBLOCK) != 0) {
  type &= ~SOCK_NONBLOCK;
  fflag |= FNONBLOCK;
 }






 error = falloc(td, &fp, &fd, oflag);
 if (error != 0)
  return (error);

 error = socreate(domain, &so, type, protocol, td->td_ucred, td);
 if (error != 0) {
  fdclose(td, fp, fd);
 } else {
  finit(fp, FREAD | FWRITE | fflag, DTYPE_SOCKET, so, &socketops);
  if ((fflag & FNONBLOCK) != 0)
   (void) fo_ioctl(fp, FIONBIO, &fflag, td->td_ucred, td);
  td->td_retval[0] = fd;
 }
 fdrop(fp, td);
 return (error);
}
