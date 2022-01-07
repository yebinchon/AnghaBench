
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uoff_t ;
struct vnode {scalar_t__ v_type; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct thread {int td_proc; } ;


 int EFBIG ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int RLIMIT_FSIZE ;
 int SIGXFSZ ;
 scalar_t__ VREG ;
 int kern_psignal (int ,int ) ;
 scalar_t__ lim_cur (struct thread*,int ) ;

int
vn_rlimit_fsize(const struct vnode *vp, const struct uio *uio,
    struct thread *td)
{

 if (vp->v_type != VREG || td == ((void*)0))
  return (0);
 if ((uoff_t)uio->uio_offset + uio->uio_resid >
     lim_cur(td, RLIMIT_FSIZE)) {
  PROC_LOCK(td->td_proc);
  kern_psignal(td->td_proc, SIGXFSZ);
  PROC_UNLOCK(td->td_proc);
  return (EFBIG);
 }
 return (0);
}
