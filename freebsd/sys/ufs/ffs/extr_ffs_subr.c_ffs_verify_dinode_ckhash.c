
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ufs2_dinode {scalar_t__ di_mode; scalar_t__ di_ckhash; } ;
struct fs {int fs_metackhash; } ;


 int CK_INODE ;
 int EINVAL ;
 scalar_t__ calculate_crc32c (long,void*,int) ;

int
ffs_verify_dinode_ckhash(struct fs *fs, struct ufs2_dinode *dip)
{
 uint32_t ckhash, save_ckhash;




 if (dip->di_mode == 0 || (fs->fs_metackhash & CK_INODE) == 0)
  return (0);




 save_ckhash = dip->di_ckhash;
 dip->di_ckhash = 0;
 ckhash = calculate_crc32c(~0L, (void *)dip, sizeof(*dip));
 dip->di_ckhash = save_ckhash;
 if (save_ckhash == ckhash)
  return (0);
 return (EINVAL);
}
