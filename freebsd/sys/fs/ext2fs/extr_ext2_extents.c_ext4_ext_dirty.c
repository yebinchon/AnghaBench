
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct m_ext2fs {int e2fs_bsize; } ;
struct inode {int i_flag; int i_vnode; int i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext4_extent_path {int ep_blk; scalar_t__ ep_data; } ;
struct buf {int b_data; } ;


 int EINVAL ;
 int EIO ;
 int IN_CHANGE ;
 int IN_UPDATE ;
 int bwrite (struct buf*) ;
 int ext2_extent_blk_csum_set (struct inode*,int ) ;
 int ext2_update (int ,int) ;
 int ext4_ext_fill_path_buf (struct ext4_extent_path*,struct buf*) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 struct buf* getblk (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
ext4_ext_dirty(struct inode *ip, struct ext4_extent_path *path)
{
 struct m_ext2fs *fs;
 struct buf *bp;
 uint64_t blk;
 int error;

 fs = ip->i_e2fs;

 if (!path)
  return (EINVAL);

 if (path->ep_data) {
  blk = path->ep_blk;
  bp = getblk(ip->i_devvp, fsbtodb(fs, blk),
      fs->e2fs_bsize, 0, 0, 0);
  if (!bp)
   return (EIO);
  ext4_ext_fill_path_buf(path, bp);
  ext2_extent_blk_csum_set(ip, bp->b_data);
  error = bwrite(bp);
 } else {
  ip->i_flag |= IN_CHANGE | IN_UPDATE;
  error = ext2_update(ip->i_vnode, 1);
 }

 return (error);
}
