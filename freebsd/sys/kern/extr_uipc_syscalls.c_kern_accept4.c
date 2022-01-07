
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct thread {int* td_retval; int td_ucred; } ;
struct TYPE_2__ {int si_note; } ;
struct socket {int so_options; int so_sigio; TYPE_1__ so_rdsel; } ;
struct sockaddr {scalar_t__ sa_len; } ;
struct filecaps {int dummy; } ;
struct file {struct socket* f_data; } ;
typedef scalar_t__ socklen_t ;
typedef scalar_t__ pid_t ;


 int ACCEPT4_INHERIT ;
 int AT_FDCWD ;
 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_SOCKADDR (struct thread*,int ,struct sockaddr*) ;
 int DTYPE_SOCKET ;
 int EINVAL ;
 int FASYNC ;
 int FIOASYNC ;
 int FIONBIO ;
 int FNONBLOCK ;
 int KNOTE_UNLOCKED (int *,int ) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_STRUCT ;
 int M_SONAME ;
 int O_CLOEXEC ;
 int SOCK_CLOEXEC ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_NONBLOCK ;
 int SOCK_UNLOCK (struct socket*) ;
 int SOLISTENING (struct socket*) ;
 int SO_ACCEPTCONN ;
 int cap_accept_rights ;
 int falloc_caps (struct thread*,struct file**,int*,int ,struct filecaps*) ;
 int fdclose (struct thread*,struct file*,int) ;
 int fdrop (struct file*,struct thread*) ;
 scalar_t__ fgetown (int *) ;
 int filecaps_free (struct filecaps*) ;
 int finit (struct file*,int,int ,struct socket*,int *) ;
 int fo_ioctl (struct file*,int ,int*,int ,struct thread*) ;
 int free (struct sockaddr*,int ) ;
 int fsetown (scalar_t__,int *) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int*,struct filecaps*) ;
 int ktrsockaddr (struct sockaddr*) ;
 int mac_socket_check_accept (int ,struct socket*) ;
 int soaccept (struct socket*,struct sockaddr**) ;
 int socketops ;
 int solisten_dequeue (struct socket*,struct socket**,int) ;

int
kern_accept4(struct thread *td, int s, struct sockaddr **name,
    socklen_t *namelen, int flags, struct file **fp)
{
 struct file *headfp, *nfp = ((void*)0);
 struct sockaddr *sa = ((void*)0);
 struct socket *head, *so;
 struct filecaps fcaps;
 u_int fflag;
 pid_t pgid;
 int error, fd, tmp;

 if (name != ((void*)0))
  *name = ((void*)0);

 AUDIT_ARG_FD(s);
 error = getsock_cap(td, s, &cap_accept_rights,
     &headfp, &fflag, &fcaps);
 if (error != 0)
  return (error);
 head = headfp->f_data;
 if ((head->so_options & SO_ACCEPTCONN) == 0) {
  error = EINVAL;
  goto done;
 }





 error = falloc_caps(td, &nfp, &fd,
     (flags & SOCK_CLOEXEC) ? O_CLOEXEC : 0, &fcaps);
 if (error != 0)
  goto done;
 SOCK_LOCK(head);
 if (!SOLISTENING(head)) {
  SOCK_UNLOCK(head);
  error = EINVAL;
  goto noconnection;
 }

 error = solisten_dequeue(head, &so, flags);
 if (error != 0)
  goto noconnection;


 td->td_retval[0] = fd;


 KNOTE_UNLOCKED(&head->so_rdsel.si_note, 0);

 if (flags & ACCEPT4_INHERIT) {
  pgid = fgetown(&head->so_sigio);
  if (pgid != 0)
   fsetown(pgid, &so->so_sigio);
 } else {
  fflag &= ~(FNONBLOCK | FASYNC);
  if (flags & SOCK_NONBLOCK)
   fflag |= FNONBLOCK;
 }

 finit(nfp, fflag, DTYPE_SOCKET, so, &socketops);

 tmp = fflag & FNONBLOCK;
 (void) fo_ioctl(nfp, FIONBIO, &tmp, td->td_ucred, td);
 tmp = fflag & FASYNC;
 (void) fo_ioctl(nfp, FIOASYNC, &tmp, td->td_ucred, td);
 error = soaccept(so, &sa);
 if (error != 0)
  goto noconnection;
 if (sa == ((void*)0)) {
  if (name)
   *namelen = 0;
  goto done;
 }
 AUDIT_ARG_SOCKADDR(td, AT_FDCWD, sa);
 if (name) {

  if (*namelen > sa->sa_len)
   *namelen = sa->sa_len;




  *name = sa;
  sa = ((void*)0);
 }
noconnection:
 free(sa, M_SONAME);





 if (error != 0)
  fdclose(td, nfp, fd);





done:
 if (nfp == ((void*)0))
  filecaps_free(&fcaps);
 if (fp != ((void*)0)) {
  if (error == 0) {
   *fp = nfp;
   nfp = ((void*)0);
  } else
   *fp = ((void*)0);
 }
 if (nfp != ((void*)0))
  fdrop(nfp, td);
 fdrop(headfp, td);
 return (error);
}
