
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct uio {int uio_iovcnt; size_t uio_resid; struct thread* uio_td; int uio_rw; int uio_segflg; int uio_offset; struct iovec* uio_iov; } ;
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct iovec {size_t iov_len; int iov_base; } ;
typedef int off_t ;
typedef int caddr_t ;


 int EINVAL ;
 int PHOLD (struct proc*) ;
 int PRELE (struct proc*) ;
 int UIO_READ ;
 int UIO_USERSPACE ;
 int UIO_WRITE ;
 struct thread* curthread ;
 int proc_rwmem (struct proc*,struct uio*) ;

__attribute__((used)) static int
cuse_proc2proc_copy(struct proc *proc_s, vm_offset_t data_s,
    struct proc *proc_d, vm_offset_t data_d, size_t len)
{
 struct thread *td;
 struct proc *proc_cur;
 int error;

 td = curthread;
 proc_cur = td->td_proc;

 if (proc_cur == proc_d) {
  struct iovec iov = {
   .iov_base = (caddr_t)data_d,
   .iov_len = len,
  };
  struct uio uio = {
   .uio_iov = &iov,
   .uio_iovcnt = 1,
   .uio_offset = (off_t)data_s,
   .uio_resid = len,
   .uio_segflg = UIO_USERSPACE,
   .uio_rw = UIO_READ,
   .uio_td = td,
  };

  PHOLD(proc_s);
  error = proc_rwmem(proc_s, &uio);
  PRELE(proc_s);

 } else if (proc_cur == proc_s) {
  struct iovec iov = {
   .iov_base = (caddr_t)data_s,
   .iov_len = len,
  };
  struct uio uio = {
   .uio_iov = &iov,
   .uio_iovcnt = 1,
   .uio_offset = (off_t)data_d,
   .uio_resid = len,
   .uio_segflg = UIO_USERSPACE,
   .uio_rw = UIO_WRITE,
   .uio_td = td,
  };

  PHOLD(proc_d);
  error = proc_rwmem(proc_d, &uio);
  PRELE(proc_d);
 } else {
  error = EINVAL;
 }
 return (error);
}
