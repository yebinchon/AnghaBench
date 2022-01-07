
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct m_ext2fs {int dummy; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct buf {scalar_t__ b_data; } ;
typedef int off_t ;
typedef int e2fs_lbn_t ;


 int NOCRED ;
 struct inode* VTOI (struct vnode*) ;
 int blkoff (struct m_ext2fs*,int ) ;
 int blksize (struct m_ext2fs*,struct inode*,int ) ;
 int bread (struct vnode*,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int ext2_dir_blk_csum_verify (struct inode*,struct buf*) ;
 int lblkno (struct m_ext2fs*,int ) ;

int
ext2_blkatoff(struct vnode *vp, off_t offset, char **res, struct buf **bpp)
{
 struct inode *ip;
 struct m_ext2fs *fs;
 struct buf *bp;
 e2fs_lbn_t lbn;
 int error, bsize;

 ip = VTOI(vp);
 fs = ip->i_e2fs;
 lbn = lblkno(fs, offset);
 bsize = blksize(fs, ip, lbn);

 if ((error = bread(vp, lbn, bsize, NOCRED, &bp)) != 0) {
  brelse(bp);
  return (error);
 }
 error = ext2_dir_blk_csum_verify(ip, bp);
 if (error != 0) {
  brelse(bp);
  return (error);
 }
 if (res)
  *res = (char *)bp->b_data + blkoff(fs, offset);

 *bpp = bp;

 return (0);
}
