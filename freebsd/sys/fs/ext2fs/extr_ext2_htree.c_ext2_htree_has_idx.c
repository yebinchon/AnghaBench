
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_flag; int i_e2fs; } ;


 int EXT2F_COMPAT_DIRHASHINDEX ;
 scalar_t__ EXT2_HAS_COMPAT_FEATURE (int ,int ) ;
 int IN_E3INDEX ;

int
ext2_htree_has_idx(struct inode *ip)
{
 if (EXT2_HAS_COMPAT_FEATURE(ip->i_e2fs, EXT2F_COMPAT_DIRHASHINDEX) &&
     ip->i_flag & IN_E3INDEX)
  return (1);
 else
  return (0);
}
