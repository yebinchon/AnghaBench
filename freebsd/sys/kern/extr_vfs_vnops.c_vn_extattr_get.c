
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; scalar_t__ uio_offset; struct thread* uio_td; int uio_segflg; int uio_rw; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct iovec {int iov_len; char* iov_base; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int IO_NODELOCKED ;
 int LK_RETRY ;
 int LK_SHARED ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_GETEXTATTR (struct vnode*,int,char const*,struct uio*,int *,int *,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int vn_lock (struct vnode*,int) ;

int
vn_extattr_get(struct vnode *vp, int ioflg, int attrnamespace,
    const char *attrname, int *buflen, char *buf, struct thread *td)
{
 struct uio auio;
 struct iovec iov;
 int error;

 iov.iov_len = *buflen;
 iov.iov_base = buf;

 auio.uio_iov = &iov;
 auio.uio_iovcnt = 1;
 auio.uio_rw = UIO_READ;
 auio.uio_segflg = UIO_SYSSPACE;
 auio.uio_td = td;
 auio.uio_offset = 0;
 auio.uio_resid = *buflen;

 if ((ioflg & IO_NODELOCKED) == 0)
  vn_lock(vp, LK_SHARED | LK_RETRY);

 ASSERT_VOP_LOCKED(vp, "IO_NODELOCKED with no vp lock held");


 error = VOP_GETEXTATTR(vp, attrnamespace, attrname, &auio, ((void*)0), ((void*)0),
     td);

 if ((ioflg & IO_NODELOCKED) == 0)
  VOP_UNLOCK(vp, 0);

 if (error == 0) {
  *buflen = *buflen - auio.uio_resid;
 }

 return (error);
}
