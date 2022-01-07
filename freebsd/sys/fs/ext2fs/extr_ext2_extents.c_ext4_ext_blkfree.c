
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct m_ext2fs {int e2fs_bsize; } ;
struct inode {int i_blocks; int i_flag; int i_vnode; struct m_ext2fs* i_e2fs; } ;


 int IN_CHANGE ;
 int IN_UPDATE ;
 int btodb (int ) ;
 int ext2_blkfree (struct inode*,scalar_t__,int ) ;
 int ext2_update (int ,int) ;

__attribute__((used)) static void
ext4_ext_blkfree(struct inode *ip, uint64_t blk, int count, int flags)
{
 struct m_ext2fs *fs;
 int i, blocksreleased;

 fs = ip->i_e2fs;
 blocksreleased = count;

 for(i = 0; i < count; i++)
  ext2_blkfree(ip, blk + i, fs->e2fs_bsize);

 if (ip->i_blocks >= blocksreleased)
  ip->i_blocks -= (btodb(fs->e2fs_bsize)*blocksreleased);
 else
  ip->i_blocks = 0;

 ip->i_flag |= IN_CHANGE | IN_UPDATE;
 ext2_update(ip->i_vnode, 1);
}
