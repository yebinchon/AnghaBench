
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; scalar_t__ uio_offset; struct thread* uio_td; int uio_segflg; int uio_rw; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct iovec {int iov_len; char* iov_base; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int IO_NODELOCKED ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VOP_SETEXTATTR (struct vnode*,int,char const*,struct uio*,int *,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int ) ;

int
vn_extattr_set(struct vnode *vp, int ioflg, int attrnamespace,
    const char *attrname, int buflen, char *buf, struct thread *td)
{
 struct uio auio;
 struct iovec iov;
 struct mount *mp;
 int error;

 iov.iov_len = buflen;
 iov.iov_base = buf;

 auio.uio_iov = &iov;
 auio.uio_iovcnt = 1;
 auio.uio_rw = UIO_WRITE;
 auio.uio_segflg = UIO_SYSSPACE;
 auio.uio_td = td;
 auio.uio_offset = 0;
 auio.uio_resid = buflen;

 if ((ioflg & IO_NODELOCKED) == 0) {
  if ((error = vn_start_write(vp, &mp, V_WAIT)) != 0)
   return (error);
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 }

 ASSERT_VOP_LOCKED(vp, "IO_NODELOCKED with no vp lock held");


 error = VOP_SETEXTATTR(vp, attrnamespace, attrname, &auio, ((void*)0), td);

 if ((ioflg & IO_NODELOCKED) == 0) {
  vn_finished_write(mp);
  VOP_UNLOCK(vp, 0);
 }

 return (error);
}
