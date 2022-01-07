
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_ext2fs {unsigned int e2fs_gcount; TYPE_1__* e2fs_gd; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ ext4bgd_csum; } ;


 int EIO ;
 char* devtoname (struct cdev*) ;
 int ext2_gd_csum (struct m_ext2fs*,unsigned int,TYPE_1__*) ;
 int printf (char*,char*,unsigned int,scalar_t__,int) ;

int
ext2_gd_csum_verify(struct m_ext2fs *fs, struct cdev *dev)
{
 unsigned int i;
 int error = 0;

 for (i = 0; i < fs->e2fs_gcount; i++) {
  if (fs->e2fs_gd[i].ext4bgd_csum !=
      ext2_gd_csum(fs, i, &fs->e2fs_gd[i])) {
   printf(
"WARNING: mount of %s denied due bad gd=%d csum=0x%x, expected=0x%x - run fsck\n",
       devtoname(dev), i, fs->e2fs_gd[i].ext4bgd_csum,
       ext2_gd_csum(fs, i, &fs->e2fs_gd[i]));
   error = EIO;
   break;
  }
 }

 return (error);
}
