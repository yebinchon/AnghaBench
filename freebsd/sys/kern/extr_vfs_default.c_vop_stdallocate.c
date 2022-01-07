
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_maxfilesize; } ;
typedef struct statfs uint8_t ;
struct vop_allocate_args {scalar_t__* a_len; scalar_t__* a_offset; struct vnode* a_vp; } ;
struct vnode {int v_mount; } ;
struct vattr {scalar_t__ va_size; size_t va_blocksize; } ;
struct uio {int uio_iovcnt; size_t uio_resid; struct thread* uio_td; int uio_rw; void* uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct thread {int td_ucred; } ;
struct iovec {scalar_t__ iov_len; struct statfs* iov_base; } ;
typedef scalar_t__ off_t ;


 size_t BLKDEV_IOSIZE ;
 int EFBIG ;
 size_t MAXPHYS ;
 int M_STATFS ;
 int M_TEMP ;
 int M_WAITOK ;
 int UIO_READ ;
 void* UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VATTR_NULL (struct vattr*) ;
 int VFS_STATFS (int ,struct statfs*,struct thread*) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_READ (struct vnode*,struct uio*,int ,int ) ;
 int VOP_SETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_WRITE (struct vnode*,struct uio*,int ,int ) ;
 int bzero (struct statfs*,scalar_t__) ;
 struct thread* curthread ;
 int free (struct statfs*,int ) ;
 struct statfs* malloc (int,int ,int ) ;
 scalar_t__ should_yield () ;

int
vop_stdallocate(struct vop_allocate_args *ap)
{




 struct iovec aiov;
 struct vattr vattr, *vap;
 struct uio auio;
 off_t fsize, len, cur, offset;
 uint8_t *buf;
 struct thread *td;
 struct vnode *vp;
 size_t iosize;
 int error;

 buf = ((void*)0);
 error = 0;
 td = curthread;
 vap = &vattr;
 vp = ap->a_vp;
 len = *ap->a_len;
 offset = *ap->a_offset;

 error = VOP_GETATTR(vp, vap, td->td_ucred);
 if (error != 0)
  goto out;
 fsize = vap->va_size;
 iosize = vap->va_blocksize;
 if (iosize == 0)
  iosize = BLKDEV_IOSIZE;
 if (iosize > MAXPHYS)
  iosize = MAXPHYS;
 buf = malloc(iosize, M_TEMP, M_WAITOK);
 if (offset + len > vap->va_size) {



  VATTR_NULL(vap);
  vap->va_size = offset + len;
  error = VOP_SETATTR(vp, vap, td->td_ucred);
  if (error != 0)
   goto out;
  VATTR_NULL(vap);
  vap->va_size = fsize;
  error = VOP_SETATTR(vp, vap, td->td_ucred);
  if (error != 0)
   goto out;
 }

 for (;;) {





  cur = iosize;
  if ((offset % iosize) != 0)
   cur -= (offset % iosize);
  if (cur > len)
   cur = len;
  if (offset < fsize) {
   aiov.iov_base = buf;
   aiov.iov_len = cur;
   auio.uio_iov = &aiov;
   auio.uio_iovcnt = 1;
   auio.uio_offset = offset;
   auio.uio_resid = cur;
   auio.uio_segflg = UIO_SYSSPACE;
   auio.uio_rw = UIO_READ;
   auio.uio_td = td;
   error = VOP_READ(vp, &auio, 0, td->td_ucred);
   if (error != 0)
    break;
   if (auio.uio_resid > 0) {
    bzero(buf + cur - auio.uio_resid,
        auio.uio_resid);
   }
  } else {
   bzero(buf, cur);
  }

  aiov.iov_base = buf;
  aiov.iov_len = cur;
  auio.uio_iov = &aiov;
  auio.uio_iovcnt = 1;
  auio.uio_offset = offset;
  auio.uio_resid = cur;
  auio.uio_segflg = UIO_SYSSPACE;
  auio.uio_rw = UIO_WRITE;
  auio.uio_td = td;

  error = VOP_WRITE(vp, &auio, 0, td->td_ucred);
  if (error != 0)
   break;

  len -= cur;
  offset += cur;
  if (len == 0)
   break;
  if (should_yield())
   break;
 }

 out:
 *ap->a_len = len;
 *ap->a_offset = offset;
 free(buf, M_TEMP);
 return (error);
}
