
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_e2fs; int i_mode; } ;


 int EMLINK ;
 int EXT2F_ROCOMPAT_DIR_NLINK ;
 scalar_t__ EXT2_HAS_RO_COMPAT_FEATURE (int ,int ) ;
 int EXT4_LINK_MAX ;
 scalar_t__ S_ISDIR (int ) ;

__attribute__((used)) static int
ext2_inc_nlink(struct inode *ip)
{

 ip->i_nlink++;

 if (S_ISDIR(ip->i_mode) &&
     EXT2_HAS_RO_COMPAT_FEATURE(ip->i_e2fs, EXT2F_ROCOMPAT_DIR_NLINK) &&
     ip->i_nlink > 1) {
  if (ip->i_nlink >= EXT4_LINK_MAX || ip->i_nlink == 2)
   ip->i_nlink = 1;
 } else if (ip->i_nlink > EXT4_LINK_MAX) {
  ip->i_nlink--;
  return (EMLINK);
 }

 return (0);
}
