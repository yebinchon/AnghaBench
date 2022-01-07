
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_ext2fs {unsigned int e2fs_gcount; TYPE_1__* e2fs_gd; } ;
struct TYPE_2__ {int ext4bgd_csum; } ;


 int ext2_gd_csum (struct m_ext2fs*,unsigned int,TYPE_1__*) ;

void
ext2_gd_csum_set(struct m_ext2fs *fs)
{
 unsigned int i;

 for (i = 0; i < fs->e2fs_gcount; i++)
      fs->e2fs_gd[i].ext4bgd_csum =
   ext2_gd_csum(fs, i, &fs->e2fs_gd[i]);
}
