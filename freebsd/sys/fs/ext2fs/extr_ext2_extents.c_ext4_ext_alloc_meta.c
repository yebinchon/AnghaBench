
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flag; int i_vnode; TYPE_1__* i_e2fs; int i_blocks; } ;
typedef scalar_t__ e4fs_daddr_t ;
struct TYPE_2__ {int e2fs_bsize; } ;


 int IN_CHANGE ;
 int IN_UPDATE ;
 scalar_t__ btodb (int ) ;
 scalar_t__ ext2_alloc_meta (struct inode*) ;
 int ext2_update (int ,int) ;

__attribute__((used)) static e4fs_daddr_t
ext4_ext_alloc_meta(struct inode *ip)
{
 e4fs_daddr_t blk = ext2_alloc_meta(ip);
 if (blk) {
  ip->i_blocks += btodb(ip->i_e2fs->e2fs_bsize);
  ip->i_flag |= IN_CHANGE | IN_UPDATE;
  ext2_update(ip->i_vnode, 1);
 }

 return (blk);
}
