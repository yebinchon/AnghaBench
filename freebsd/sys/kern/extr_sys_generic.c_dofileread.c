
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; struct thread* uio_td; int uio_offset; int uio_rw; } ;
struct thread {scalar_t__* td_retval; int td_ucred; } ;
struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;


 int AUDIT_ARG_FD (int) ;
 int EINTR ;
 int ERESTART ;
 int EWOULDBLOCK ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_GENIO ;
 int UIO_READ ;
 struct uio* cloneuio (struct uio*) ;
 int fo_read (struct file*,struct uio*,int ,int,struct thread*) ;
 int ktrgenio (int,int ,struct uio*,int) ;

__attribute__((used)) static int
dofileread(struct thread *td, int fd, struct file *fp, struct uio *auio,
    off_t offset, int flags)
{
 ssize_t cnt;
 int error;




 AUDIT_ARG_FD(fd);


 if (auio->uio_resid == 0) {
  td->td_retval[0] = 0;
  return (0);
 }
 auio->uio_rw = UIO_READ;
 auio->uio_offset = offset;
 auio->uio_td = td;




 cnt = auio->uio_resid;
 if ((error = fo_read(fp, auio, td->td_ucred, flags, td))) {
  if (auio->uio_resid != cnt && (error == ERESTART ||
      error == EINTR || error == EWOULDBLOCK))
   error = 0;
 }
 cnt -= auio->uio_resid;






 td->td_retval[0] = cnt;
 return (error);
}
