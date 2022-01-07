
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct vnode {TYPE_2__* v_mount; } ;
struct vattr {scalar_t__ va_size; } ;
struct uio {size_t uio_resid; scalar_t__ uio_offset; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_8__ {int td_ucred; } ;
struct TYPE_6__ {long f_iosize; } ;
struct TYPE_7__ {TYPE_1__ mnt_stat; } ;


 int EFBIG ;
 int EINVAL ;
 int FIOSEEKDATA ;
 int FIOSEEKHOLE ;
 int IO_NODELOCKED ;
 int LK_EXCLUSIVE ;
 int LK_SHARED ;
 int MAX (long,long) ;
 void* MIN (size_t,scalar_t__) ;
 int M_TEMP ;
 int M_WAITOK ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int VOP_IOCTL (struct vnode*,int ,scalar_t__*,int ,struct ucred*,TYPE_3__*) ;
 scalar_t__ VOP_PATHCONF (struct vnode*,int ,long*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int _PC_MIN_HOLE_SIZE ;
 TYPE_3__* curthread ;
 int free (char*,int ) ;
 int mac_vnode_check_write (int ,struct ucred*,struct vnode*) ;
 char* malloc (int,int ,int ) ;
 int mem_iszero (char*,scalar_t__) ;
 int memset (char*,int ,void*) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int ) ;
 int vn_rdwr (int ,struct vnode*,char*,scalar_t__,scalar_t__,int ,int ,int ,struct ucred*,scalar_t__*,TYPE_3__*) ;
 int vn_rlimit_fsize (struct vnode*,struct uio*,struct thread*) ;
 int vn_start_write (struct vnode*,struct mount**,int ) ;
 int vn_truncate_locked (struct vnode*,scalar_t__,int,struct ucred*) ;
 int vn_write_outvp (struct vnode*,char*,scalar_t__,scalar_t__,int,int,int,struct ucred*) ;

int
vn_generic_copy_file_range(struct vnode *invp, off_t *inoffp,
    struct vnode *outvp, off_t *outoffp, size_t *lenp, unsigned int flags,
    struct ucred *incred, struct ucred *outcred, struct thread *fsize_td)
{
 struct vattr va;
 struct mount *mp;
 struct uio io;
 off_t startoff, endoff, xfer, xfer2;
 u_long blksize;
 int error;
 bool cantseek, readzeros, eof, lastblock;
 ssize_t aresid;
 size_t copylen, len, savlen;
 char *dat;
 long holein, holeout;

 holein = holeout = 0;
 savlen = len = *lenp;
 error = 0;
 dat = ((void*)0);

 error = vn_lock(invp, LK_SHARED);
 if (error != 0)
  goto out;
 if (VOP_PATHCONF(invp, _PC_MIN_HOLE_SIZE, &holein) != 0)
  holein = 0;
 VOP_UNLOCK(invp, 0);

 mp = ((void*)0);
 error = vn_start_write(outvp, &mp, V_WAIT);
 if (error == 0)
  error = vn_lock(outvp, LK_EXCLUSIVE);
 if (error == 0) {




  if (fsize_td != ((void*)0)) {
   io.uio_offset = *outoffp;
   io.uio_resid = len;
   error = vn_rlimit_fsize(outvp, &io, fsize_td);
   if (error != 0)
    error = EFBIG;
  }
  if (VOP_PATHCONF(outvp, _PC_MIN_HOLE_SIZE, &holeout) != 0)
   holeout = 0;






  if (error == 0)
   error = VOP_GETATTR(outvp, &va, outcred);
  if (error == 0 && va.va_size > *outoffp && va.va_size <=
      *outoffp + len) {





    error = vn_truncate_locked(outvp, *outoffp,
        0, outcred);
   if (error == 0)
    va.va_size = *outoffp;
  }
  VOP_UNLOCK(outvp, 0);
 }
 if (mp != ((void*)0))
  vn_finished_write(mp);
 if (error != 0)
  goto out;
 blksize = MAX(holein, holeout);
 if (blksize == 0)
  blksize = MAX(invp->v_mount->mnt_stat.f_iosize,
      outvp->v_mount->mnt_stat.f_iosize);
 if (blksize < 4096)
  blksize = 4096;
 else if (blksize > 1024 * 1024)
  blksize = 1024 * 1024;
 dat = malloc(blksize, M_TEMP, M_WAITOK);
 eof = 0;
 while (len > 0 && error == 0 && !eof) {
  endoff = 0;
  cantseek = 1;
  startoff = *inoffp;
  copylen = len;
  error = EINVAL;
  if (holein > 0)
   error = VOP_IOCTL(invp, FIOSEEKDATA, &startoff, 0,
       incred, curthread);
  if (error == 0) {
   endoff = startoff;
   error = VOP_IOCTL(invp, FIOSEEKHOLE, &endoff, 0,
       incred, curthread);
   if (error == 0 && startoff == endoff)
    error = EINVAL;
  }
  if (error == 0) {
   if (startoff > *inoffp) {

    xfer = MIN(startoff - *inoffp, len);
    if (*outoffp < va.va_size) {

     xfer2 = MIN(va.va_size - *outoffp,
         xfer);
     memset(dat, 0, MIN(xfer2, blksize));
     error = vn_write_outvp(outvp, dat,
         *outoffp, xfer2, blksize, 0,
         holeout > 0, outcred);
    }

    if (error == 0 && *outoffp + xfer >
        va.va_size && xfer == len)

     error = vn_write_outvp(outvp, dat,
         *outoffp, xfer, blksize, 1,
         0, outcred);
    if (error == 0) {
     *inoffp += xfer;
     *outoffp += xfer;
     len -= xfer;
    }
   }
   copylen = MIN(len, endoff - startoff);
   cantseek = 0;
  } else {
   cantseek = 1;
   startoff = *inoffp;
   copylen = len;
   error = 0;
  }

  xfer = blksize;
  if (cantseek) {





   xfer -= (*inoffp % blksize);
  }

  while (copylen > 0 && error == 0 && !eof) {
   if (copylen < xfer)
    xfer = copylen;
   error = vn_lock(invp, LK_SHARED);
   if (error != 0)
    goto out;
   error = vn_rdwr(UIO_READ, invp, dat, xfer,
       startoff, UIO_SYSSPACE, IO_NODELOCKED,
       curthread->td_ucred, incred, &aresid,
       curthread);
   VOP_UNLOCK(invp, 0);
   lastblock = 0;
   if (error == 0 && aresid > 0) {

    xfer -= aresid;
    eof = 1;
    lastblock = 1;
   }
   if (error == 0) {





    readzeros = cantseek ? mem_iszero(dat, xfer) :
        0;
    if (xfer == len)
     lastblock = 1;
    if (!cantseek || *outoffp < va.va_size ||
        lastblock || !readzeros)
     error = vn_write_outvp(outvp, dat,
         *outoffp, xfer, blksize,
         readzeros && lastblock &&
         *outoffp >= va.va_size, 0,
         outcred);
    if (error == 0) {
     *inoffp += xfer;
     startoff += xfer;
     *outoffp += xfer;
     copylen -= xfer;
     len -= xfer;
    }
   }
   xfer = blksize;
  }
 }
out:
 *lenp = savlen - len;
 free(dat, M_TEMP);
 return (error);
}
