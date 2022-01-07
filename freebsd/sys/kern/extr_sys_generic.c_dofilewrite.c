
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; int uio_offset; struct thread* uio_td; int uio_rw; } ;
struct thread {scalar_t__* td_retval; int td_proc; int td_ucred; } ;
struct file {scalar_t__ f_type; } ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;


 int AUDIT_ARG_FD (int) ;
 scalar_t__ DTYPE_SOCKET ;
 int EINTR ;
 int EPIPE ;
 int ERESTART ;
 int EWOULDBLOCK ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_GENIO ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SIGPIPE ;
 int UIO_WRITE ;
 struct uio* cloneuio (struct uio*) ;
 int fo_write (struct file*,struct uio*,int ,int,struct thread*) ;
 int ktrgenio (int,int ,struct uio*,int) ;
 int tdsignal (struct thread*,int ) ;

__attribute__((used)) static int
dofilewrite(struct thread *td, int fd, struct file *fp, struct uio *auio,
    off_t offset, int flags)
{
 ssize_t cnt;
 int error;




 AUDIT_ARG_FD(fd);
 auio->uio_rw = UIO_WRITE;
 auio->uio_td = td;
 auio->uio_offset = offset;




 cnt = auio->uio_resid;
 if ((error = fo_write(fp, auio, td->td_ucred, flags, td))) {
  if (auio->uio_resid != cnt && (error == ERESTART ||
      error == EINTR || error == EWOULDBLOCK))
   error = 0;

  if (fp->f_type != DTYPE_SOCKET && error == EPIPE) {
   PROC_LOCK(td->td_proc);
   tdsignal(td, SIGPIPE);
   PROC_UNLOCK(td->td_proc);
  }
 }
 cnt -= auio->uio_resid;






 td->td_retval[0] = cnt;
 return (error);
}
