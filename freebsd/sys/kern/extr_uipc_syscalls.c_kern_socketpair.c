
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpcb {int dummy; } ;
struct thread {int td_ucred; } ;
struct socket {TYPE_1__* so_proto; } ;
struct file {struct socket* f_data; } ;
struct TYPE_2__ {int pr_flags; } ;


 int AUDIT_ARG_SOCKET (int,int,int) ;
 int DTYPE_SOCKET ;
 int FIONBIO ;
 int FNONBLOCK ;
 int FREAD ;
 int FWRITE ;
 int O_CLOEXEC ;
 int PR_CONNREQUIRED ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int SOCK_NONBLOCK ;
 int falloc (struct thread*,struct file**,int*,int) ;
 int fdclose (struct thread*,struct file*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct socket*,int *) ;
 int fo_ioctl (struct file*,int ,int*,int ,struct thread*) ;
 int mac_socket_check_create (int ,int,int,int) ;
 int socketops ;
 int soclose (struct socket*) ;
 int soconnect2 (struct socket*,struct socket*) ;
 int socreate (int,struct socket**,int,int,int ,struct thread*) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_copy_peercred (struct thread*,struct unpcb*,struct unpcb*,struct unpcb*) ;

int
kern_socketpair(struct thread *td, int domain, int type, int protocol,
    int *rsv)
{
 struct file *fp1, *fp2;
 struct socket *so1, *so2;
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







 error = socreate(domain, &so1, type, protocol, td->td_ucred, td);
 if (error != 0)
  return (error);
 error = socreate(domain, &so2, type, protocol, td->td_ucred, td);
 if (error != 0)
  goto free1;

 error = falloc(td, &fp1, &fd, oflag);
 if (error != 0)
  goto free2;
 rsv[0] = fd;
 fp1->f_data = so1;
 error = falloc(td, &fp2, &fd, oflag);
 if (error != 0)
  goto free3;
 fp2->f_data = so2;
 rsv[1] = fd;
 error = soconnect2(so1, so2);
 if (error != 0)
  goto free4;
 if (type == SOCK_DGRAM) {



   error = soconnect2(so2, so1);
   if (error != 0)
   goto free4;
 } else if (so1->so_proto->pr_flags & PR_CONNREQUIRED) {
  struct unpcb *unp, *unp2;
  unp = sotounpcb(so1);
  unp2 = sotounpcb(so2);




  unp_copy_peercred(td, unp, unp2, unp);
 }
 finit(fp1, FREAD | FWRITE | fflag, DTYPE_SOCKET, fp1->f_data,
     &socketops);
 finit(fp2, FREAD | FWRITE | fflag, DTYPE_SOCKET, fp2->f_data,
     &socketops);
 if ((fflag & FNONBLOCK) != 0) {
  (void) fo_ioctl(fp1, FIONBIO, &fflag, td->td_ucred, td);
  (void) fo_ioctl(fp2, FIONBIO, &fflag, td->td_ucred, td);
 }
 fdrop(fp1, td);
 fdrop(fp2, td);
 return (0);
free4:
 fdclose(td, fp2, rsv[1]);
 fdrop(fp2, td);
free3:
 fdclose(td, fp1, rsv[0]);
 fdrop(fp1, td);
free2:
 if (so2 != ((void*)0))
  (void)soclose(so2);
free1:
 if (so1 != ((void*)0))
  (void)soclose(so1);
 return (error);
}
