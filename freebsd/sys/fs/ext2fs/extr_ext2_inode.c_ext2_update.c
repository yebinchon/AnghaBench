
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; scalar_t__ e2fs_ronly; } ;
struct inode {int i_flag; int i_number; int i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_dinode {int dummy; } ;
struct buf {scalar_t__ b_data; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int DOINGASYNC (struct vnode*) ;
 int EXT2_INODE_SIZE (struct m_ext2fs*) ;
 int IN_LAZYACCESS ;
 int IN_LAZYMOD ;
 int IN_MODIFIED ;
 int NOCRED ;
 struct inode* VTOI (struct vnode*) ;
 int bdwrite (struct buf*) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int bwrite (struct buf*) ;
 int ext2_i2ei (struct inode*,struct ext2fs_dinode*) ;
 int ext2_itimes (struct vnode*) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 int ino_to_fsba (struct m_ext2fs*,int ) ;
 int ino_to_fsbo (struct m_ext2fs*,int ) ;

int
ext2_update(struct vnode *vp, int waitfor)
{
 struct m_ext2fs *fs;
 struct buf *bp;
 struct inode *ip;
 int error;

 ASSERT_VOP_ELOCKED(vp, "ext2_update");
 ext2_itimes(vp);
 ip = VTOI(vp);
 if ((ip->i_flag & IN_MODIFIED) == 0 && waitfor == 0)
  return (0);
 ip->i_flag &= ~(IN_LAZYACCESS | IN_LAZYMOD | IN_MODIFIED);
 fs = ip->i_e2fs;
 if (fs->e2fs_ronly)
  return (0);
 if ((error = bread(ip->i_devvp,
     fsbtodb(fs, ino_to_fsba(fs, ip->i_number)),
     (int)fs->e2fs_bsize, NOCRED, &bp)) != 0) {
  brelse(bp);
  return (error);
 }
 error = ext2_i2ei(ip, (struct ext2fs_dinode *)((char *)bp->b_data +
     EXT2_INODE_SIZE(fs) * ino_to_fsbo(fs, ip->i_number)));
 if (error) {
  brelse(bp);
  return (error);
 }
 if (waitfor && !DOINGASYNC(vp))
  return (bwrite(bp));
 else {
  bdwrite(bp);
  return (0);
 }
}
