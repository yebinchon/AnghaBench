
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; int uio_segflg; scalar_t__ uio_resid; scalar_t__ uio_offset; struct thread* uio_td; int uio_rw; struct iovec* uio_iov; } ;
struct thread {scalar_t__* td_retval; int td_proc; int td_ucred; } ;
struct socket {int so_options; } ;
struct msghdr {int msg_iovlen; int * msg_name; struct iovec* msg_iov; } ;
struct mbuf {int dummy; } ;
struct iovec {scalar_t__ iov_len; } ;
struct file {scalar_t__ f_data; } ;
typedef scalar_t__ ssize_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef int cap_rights_t ;


 int AT_FDCWD ;
 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_SOCKADDR (struct thread*,int ,int *) ;
 int EINTR ;
 int EINVAL ;
 int EPIPE ;
 int ERESTART ;
 int EWOULDBLOCK ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_GENIO ;
 int KTR_STRUCT ;
 int MSG_NOSIGNAL ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SIGPIPE ;
 int SO_NOSIGPIPE ;
 int UIO_WRITE ;
 int cap_send_connect_rights ;
 int cap_send_rights ;
 struct uio* cloneuio (struct uio*) ;
 int fdrop (struct file*,struct thread*) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;
 int ktrgenio (int,int ,struct uio*,int) ;
 int ktrsockaddr (int *) ;
 int m_freem (struct mbuf*) ;
 int mac_socket_check_connect (int ,struct socket*,int *) ;
 int mac_socket_check_send (int ,struct socket*) ;
 int sosend (struct socket*,int *,struct uio*,int ,struct mbuf*,int,struct thread*) ;
 int tdsignal (struct thread*,int ) ;

int
kern_sendit(struct thread *td, int s, struct msghdr *mp, int flags,
    struct mbuf *control, enum uio_seg segflg)
{
 struct file *fp;
 struct uio auio;
 struct iovec *iov;
 struct socket *so;
 cap_rights_t *rights;



 ssize_t len;
 int i, error;

 AUDIT_ARG_FD(s);
 rights = &cap_send_rights;
 if (mp->msg_name != ((void*)0)) {
  AUDIT_ARG_SOCKADDR(td, AT_FDCWD, mp->msg_name);
  rights = &cap_send_connect_rights;
 }
 error = getsock_cap(td, s, rights, &fp, ((void*)0), ((void*)0));
 if (error != 0) {
  m_freem(control);
  return (error);
 }
 so = (struct socket *)fp->f_data;
 auio.uio_iov = mp->msg_iov;
 auio.uio_iovcnt = mp->msg_iovlen;
 auio.uio_segflg = segflg;
 auio.uio_rw = UIO_WRITE;
 auio.uio_td = td;
 auio.uio_offset = 0;
 auio.uio_resid = 0;
 iov = mp->msg_iov;
 for (i = 0; i < mp->msg_iovlen; i++, iov++) {
  if ((auio.uio_resid += iov->iov_len) < 0) {
   error = EINVAL;
   m_freem(control);
   goto bad;
  }
 }




 len = auio.uio_resid;
 error = sosend(so, mp->msg_name, &auio, 0, control, flags, td);
 if (error != 0) {
  if (auio.uio_resid != len && (error == ERESTART ||
      error == EINTR || error == EWOULDBLOCK))
   error = 0;

  if (error == EPIPE && !(so->so_options & SO_NOSIGPIPE) &&
      !(flags & MSG_NOSIGNAL)) {
   PROC_LOCK(td->td_proc);
   tdsignal(td, SIGPIPE);
   PROC_UNLOCK(td->td_proc);
  }
 }
 if (error == 0)
  td->td_retval[0] = len - auio.uio_resid;






bad:
 fdrop(fp, td);
 return (error);
}
