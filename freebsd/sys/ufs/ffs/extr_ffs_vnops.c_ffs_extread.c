
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs_lbn_t ;
typedef void* u_int ;
struct vnode {int dummy; } ;
struct uio {scalar_t__ uio_rw; scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct ufs2_dinode {scalar_t__ di_extsize; } ;
struct inode {struct ufs2_dinode* i_din2; } ;
struct fs {scalar_t__ fs_magic; long fs_bsize; } ;
struct buf {scalar_t__ b_data; scalar_t__ b_resid; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 scalar_t__ FS_UFS2_MAGIC ;
 struct fs* ITOFS (struct inode*) ;
 int KASSERT (int,char*) ;
 int NOCRED ;
 scalar_t__ UIO_READ ;
 struct inode* VTOI (struct vnode*) ;
 long blkoff (struct fs*,scalar_t__) ;
 int bread (struct vnode*,scalar_t__,long,int ,struct buf**) ;
 int breadn (struct vnode*,scalar_t__,long,scalar_t__*,void**,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 scalar_t__ lblkno (struct fs*,scalar_t__) ;
 scalar_t__ lblktosize (struct fs*,scalar_t__) ;
 int panic (char*) ;
 void* sblksize (struct fs*,scalar_t__,scalar_t__) ;
 int uiomove (char*,int,struct uio*) ;
 int vfs_bio_brelse (struct buf*,int) ;

__attribute__((used)) static int
ffs_extread(struct vnode *vp, struct uio *uio, int ioflag)
{
 struct inode *ip;
 struct ufs2_dinode *dp;
 struct fs *fs;
 struct buf *bp;
 ufs_lbn_t lbn, nextlbn;
 off_t bytesinfile;
 long size, xfersize, blkoffset;
 ssize_t orig_resid;
 int error;

 ip = VTOI(vp);
 fs = ITOFS(ip);
 dp = ip->i_din2;






 orig_resid = uio->uio_resid;
 KASSERT(orig_resid >= 0, ("ffs_extread: uio->uio_resid < 0"));
 if (orig_resid == 0)
  return (0);
 KASSERT(uio->uio_offset >= 0, ("ffs_extread: uio->uio_offset < 0"));

 for (error = 0, bp = ((void*)0); uio->uio_resid > 0; bp = ((void*)0)) {
  if ((bytesinfile = dp->di_extsize - uio->uio_offset) <= 0)
   break;
  lbn = lblkno(fs, uio->uio_offset);
  nextlbn = lbn + 1;







  size = sblksize(fs, dp->di_extsize, lbn);
  blkoffset = blkoff(fs, uio->uio_offset);






  xfersize = fs->fs_bsize - blkoffset;






  if (uio->uio_resid < xfersize)
   xfersize = uio->uio_resid;
  if (bytesinfile < xfersize)
   xfersize = bytesinfile;

  if (lblktosize(fs, nextlbn) >= dp->di_extsize) {



   error = bread(vp, -1 - lbn, size, NOCRED, &bp);
  } else {







   u_int nextsize = sblksize(fs, dp->di_extsize, nextlbn);

   nextlbn = -1 - nextlbn;
   error = breadn(vp, -1 - lbn,
       size, &nextlbn, &nextsize, 1, NOCRED, &bp);
  }
  if (error) {
   brelse(bp);
   bp = ((void*)0);
   break;
  }
  size -= bp->b_resid;
  if (size < xfersize) {
   if (size == 0)
    break;
   xfersize = size;
  }

  error = uiomove((char *)bp->b_data + blkoffset,
     (int)xfersize, uio);
  if (error)
   break;
  vfs_bio_brelse(bp, ioflag);
 }







 if (bp != ((void*)0))
  vfs_bio_brelse(bp, ioflag);
 return (error);
}
