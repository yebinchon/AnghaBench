
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_fs; } ;
struct buf {int dummy; } ;
typedef int off_t ;
struct TYPE_2__ {scalar_t__ fs_magic; } ;


 scalar_t__ FS_UFS2_MAGIC ;
 int ffs_balloc_ufs1 (struct inode*,int ,int,struct buf**) ;
 int ffs_balloc_ufs2 (struct inode*,int ,int,struct buf**) ;

int
ffs_balloc(struct inode *ip, off_t offset, int bufsize, struct buf **bpp)
{
 if (ip->i_fs->fs_magic == FS_UFS2_MAGIC)
  return ffs_balloc_ufs2(ip, offset, bufsize, bpp);
 else
  return ffs_balloc_ufs1(ip, offset, bufsize, bpp);
}
