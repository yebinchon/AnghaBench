
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs2_dinode {scalar_t__ di_mode; scalar_t__ di_ckhash; } ;
struct fs {int fs_metackhash; } ;


 int CK_INODE ;
 scalar_t__ calculate_crc32c (long,void*,int) ;

void
ffs_update_dinode_ckhash(struct fs *fs, struct ufs2_dinode *dip)
{

 if (dip->di_mode == 0 || (fs->fs_metackhash & CK_INODE) == 0)
  return;




 dip->di_ckhash = 0;
 dip->di_ckhash = calculate_crc32c(~0L, (void *)dip, sizeof(*dip));
}
