
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; size_t uio_resid; struct thread* uio_td; int uio_segflg; int uio_rw; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct thread {size_t* td_retval; int td_ucred; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 size_t IOSIZE_MAX ;
 int LK_RETRY ;
 int LK_SHARED ;
 int UIO_READ ;
 int UIO_USERSPACE ;
 int VOP_GETEXTATTR (struct vnode*,int,char const*,struct uio*,size_t*,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int mac_vnode_check_getextattr (int ,struct vnode*,int,char const*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
extattr_get_vp(struct vnode *vp, int attrnamespace, const char *attrname,
    void *data, size_t nbytes, struct thread *td)
{
 struct uio auio, *auiop;
 struct iovec aiov;
 ssize_t cnt;
 size_t size, *sizep;
 int error;

 if (nbytes > IOSIZE_MAX)
  return (EINVAL);

 vn_lock(vp, LK_SHARED | LK_RETRY);






 auiop = ((void*)0);
 sizep = ((void*)0);
 cnt = 0;
 if (data != ((void*)0)) {
  aiov.iov_base = data;
  aiov.iov_len = nbytes;
  auio.uio_iov = &aiov;
  auio.uio_iovcnt = 1;
  auio.uio_offset = 0;
  auio.uio_resid = nbytes;
  auio.uio_rw = UIO_READ;
  auio.uio_segflg = UIO_USERSPACE;
  auio.uio_td = td;
  auiop = &auio;
  cnt = nbytes;
 } else
  sizep = &size;
 error = VOP_GETEXTATTR(vp, attrnamespace, attrname, auiop, sizep,
     td->td_ucred, td);

 if (auiop != ((void*)0)) {
  cnt -= auio.uio_resid;
  td->td_retval[0] = cnt;
 } else
  td->td_retval[0] = size;



 VOP_UNLOCK(vp, 0);
 return (error);
}
