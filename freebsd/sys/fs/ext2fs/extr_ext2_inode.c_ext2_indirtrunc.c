
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vnode {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct buf {int b_flags; scalar_t__ b_bcount; scalar_t__ b_bufsize; int b_blkno; scalar_t__ b_data; int b_iooffset; int b_iocmd; } ;
typedef int int32_t ;
typedef int e4fs_daddr_t ;
typedef int e2fs_lbn_t ;
typedef int e2fs_daddr_t ;
typedef int daddr_t ;
typedef int caddr_t ;


 int BIO_READ ;
 int B_DELWRI ;
 int B_DONE ;
 int B_INVAL ;
 scalar_t__ DOINGASYNC (struct vnode*) ;
 struct vnode* ITOV (struct inode*) ;
 int M_TEMP ;
 int M_WAITOK ;
 int NINDIR (struct m_ext2fs*) ;
 int SINGLE ;
 int bcopy (int ,int ,int ) ;
 int bdwrite (struct buf*) ;
 int brelse (struct buf*) ;
 int bstrategy (struct buf*) ;
 int btodb (scalar_t__) ;
 int bufwait (struct buf*) ;
 int bwrite (struct buf*) ;
 int bzero (int ,int) ;
 int dbtob (int) ;
 int ext2_blkfree (struct inode*,int,scalar_t__) ;
 int free (int*,int ) ;
 int fsbtodb (struct m_ext2fs*,int) ;
 struct buf* getblk (struct vnode*,int,int,int ,int ,int ) ;
 int* malloc (scalar_t__,int ,int ) ;
 int panic (char*) ;
 int vfs_busy_pages (struct buf*,int ) ;

__attribute__((used)) static int
ext2_indirtrunc(struct inode *ip, daddr_t lbn, daddr_t dbn,
    daddr_t lastbn, int level, e4fs_daddr_t *countp)
{
 struct buf *bp;
 struct m_ext2fs *fs = ip->i_e2fs;
 struct vnode *vp;
 e2fs_daddr_t *bap, *copy;
 int i, nblocks, error = 0, allerror = 0;
 e2fs_lbn_t nb, nlbn, last;
 e4fs_daddr_t blkcount, factor, blocksreleased = 0;






 factor = 1;
 for (i = SINGLE; i < level; i++)
  factor *= NINDIR(fs);
 last = lastbn;
 if (lastbn > 0)
  last /= factor;
 nblocks = btodb(fs->e2fs_bsize);
 vp = ITOV(ip);
 bp = getblk(vp, lbn, (int)fs->e2fs_bsize, 0, 0, 0);
 if ((bp->b_flags & (B_DONE | B_DELWRI)) == 0) {
  bp->b_iocmd = BIO_READ;
  if (bp->b_bcount > bp->b_bufsize)
   panic("ext2_indirtrunc: bad buffer size");
  bp->b_blkno = dbn;
  vfs_busy_pages(bp, 0);
  bp->b_iooffset = dbtob(bp->b_blkno);
  bstrategy(bp);
  error = bufwait(bp);
 }
 if (error) {
  brelse(bp);
  *countp = 0;
  return (error);
 }
 bap = (e2fs_daddr_t *)bp->b_data;
 copy = malloc(fs->e2fs_bsize, M_TEMP, M_WAITOK);
 bcopy((caddr_t)bap, (caddr_t)copy, (u_int)fs->e2fs_bsize);
 bzero((caddr_t)&bap[last + 1],
     (NINDIR(fs) - (last + 1)) * sizeof(e2fs_daddr_t));
 if (last == -1)
  bp->b_flags |= B_INVAL;
 if (DOINGASYNC(vp)) {
  bdwrite(bp);
 } else {
  error = bwrite(bp);
  if (error)
   allerror = error;
 }
 bap = copy;




 for (i = NINDIR(fs) - 1, nlbn = lbn + 1 - i * factor; i > last;
     i--, nlbn += factor) {
  nb = bap[i];
  if (nb == 0)
   continue;
  if (level > SINGLE) {
   if ((error = ext2_indirtrunc(ip, nlbn,
       fsbtodb(fs, nb), (int32_t)-1, level - 1, &blkcount)) != 0)
    allerror = error;
   blocksreleased += blkcount;
  }
  ext2_blkfree(ip, nb, fs->e2fs_bsize);
  blocksreleased += nblocks;
 }




 if (level > SINGLE && lastbn >= 0) {
  last = lastbn % factor;
  nb = bap[i];
  if (nb != 0) {
   if ((error = ext2_indirtrunc(ip, nlbn, fsbtodb(fs, nb),
       last, level - 1, &blkcount)) != 0)
    allerror = error;
   blocksreleased += blkcount;
  }
 }
 free(copy, M_TEMP);
 *countp = blocksreleased;
 return (allerror);
}
