
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_ext2fs {TYPE_1__* e2fs; } ;
struct inode {int i_block_group; struct m_ext2fs* i_e2fs; } ;
struct ext4_extent_path {int ep_depth; scalar_t__ ep_blk; scalar_t__ ep_data; struct ext4_extent* ep_ext; } ;
struct ext4_extent {scalar_t__ e_blk; } ;
typedef scalar_t__ e4fs_daddr_t ;
typedef scalar_t__ e2fs_daddr_t ;
struct TYPE_2__ {scalar_t__ e2fs_first_dblock; } ;


 int EXT2_BLOCKS_PER_GROUP (struct m_ext2fs*) ;
 scalar_t__ ext4_ext_extent_pblock (struct ext4_extent*) ;

__attribute__((used)) static e4fs_daddr_t
ext4_ext_blkpref(struct inode *ip, struct ext4_extent_path *path,
    e4fs_daddr_t block)
{
 struct m_ext2fs *fs;
 struct ext4_extent *ex;
 e4fs_daddr_t bg_start;
 int depth;

 fs = ip->i_e2fs;

 if (path) {
  depth = path->ep_depth;
  ex = path[depth].ep_ext;
  if (ex) {
   e4fs_daddr_t pblk = ext4_ext_extent_pblock(ex);
   e2fs_daddr_t blk = ex->e_blk;

   if (block > blk)
    return (pblk + (block - blk));
   else
    return (pblk - (blk - block));
  }


  if (path[depth].ep_data)
   return (path[depth].ep_blk);
 }


 bg_start = (ip->i_block_group * EXT2_BLOCKS_PER_GROUP(ip->i_e2fs)) +
     fs->e2fs->e2fs_first_dblock;

 return (bg_start + block);
}
