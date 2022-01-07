
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct uio {scalar_t__ uio_rw; scalar_t__ uio_segflg; scalar_t__ uio_resid; int uio_iovcnt; size_t uio_offset; TYPE_1__* uio_iov; } ;
struct ufsmount {struct fs* um_fs; struct vnode* um_devvp; } ;
struct mount {int dummy; } ;
struct fs {size_t fs_bsize; } ;
struct cdev {int dummy; } ;
struct buf {int b_flags; int b_data; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {size_t iov_len; char* iov_base; } ;


 int B_INVAL ;
 int B_NOCACHE ;
 int EINVAL ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int NOCRED ;
 scalar_t__ UIO_READ ;
 scalar_t__ UIO_USERSPACE ;
 scalar_t__ UIO_WRITE ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int bread (struct vnode*,int ,size_t,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int btodb (size_t) ;
 int bwrite (struct buf*) ;
 int copyin (void*,int ,size_t) ;
 int copyout (int ,void*,size_t) ;
 int devfs_get_cdevpriv (void**) ;
 int ffs_susp_lock ;
 scalar_t__ ffs_susp_suspended (struct mount*) ;
 scalar_t__ fragoff (struct fs*,size_t) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
ffs_susp_rdwr(struct cdev *dev, struct uio *uio, int ioflag)
{
 int error, i;
 struct vnode *devvp;
 struct mount *mp;
 struct ufsmount *ump;
 struct buf *bp;
 void *base;
 size_t len;
 ssize_t cnt;
 struct fs *fs;

 sx_slock(&ffs_susp_lock);

 error = devfs_get_cdevpriv((void **)&mp);
 if (error != 0) {
  sx_sunlock(&ffs_susp_lock);
  return (ENXIO);
 }

 ump = VFSTOUFS(mp);
 devvp = ump->um_devvp;
 fs = ump->um_fs;

 if (ffs_susp_suspended(mp) == 0) {
  sx_sunlock(&ffs_susp_lock);
  return (ENXIO);
 }

 KASSERT(uio->uio_rw == UIO_READ || uio->uio_rw == UIO_WRITE,
     ("neither UIO_READ or UIO_WRITE"));
 KASSERT(uio->uio_segflg == UIO_USERSPACE,
     ("uio->uio_segflg != UIO_USERSPACE"));

 cnt = uio->uio_resid;

 for (i = 0; i < uio->uio_iovcnt; i++) {
  while (uio->uio_iov[i].iov_len) {
   base = uio->uio_iov[i].iov_base;
   len = uio->uio_iov[i].iov_len;
   if (len > fs->fs_bsize)
    len = fs->fs_bsize;
   if (fragoff(fs, uio->uio_offset) != 0 ||
       fragoff(fs, len) != 0) {
    error = EINVAL;
    goto out;
   }
   error = bread(devvp, btodb(uio->uio_offset), len,
       NOCRED, &bp);
   if (error != 0)
    goto out;
   if (uio->uio_rw == UIO_WRITE) {
    error = copyin(base, bp->b_data, len);
    if (error != 0) {
     bp->b_flags |= B_INVAL | B_NOCACHE;
     brelse(bp);
     goto out;
    }
    error = bwrite(bp);
    if (error != 0)
     goto out;
   } else {
    error = copyout(bp->b_data, base, len);
    brelse(bp);
    if (error != 0)
     goto out;
   }
   uio->uio_iov[i].iov_base =
       (char *)uio->uio_iov[i].iov_base + len;
   uio->uio_iov[i].iov_len -= len;
   uio->uio_resid -= len;
   uio->uio_offset += len;
  }
 }

out:
 sx_sunlock(&ffs_susp_lock);

 if (uio->uio_resid < cnt)
  return (0);

 return (error);
}
