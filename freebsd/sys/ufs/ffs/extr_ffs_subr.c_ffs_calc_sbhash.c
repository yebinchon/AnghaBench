
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fs {int fs_metackhash; int fs_ckhash; int fs_sbsize; } ;


 int CK_SUPERBLOCK ;
 int calculate_crc32c (long,void*,int ) ;

uint32_t
ffs_calc_sbhash(struct fs *fs)
{
 uint32_t ckhash, save_ckhash;
 if ((fs->fs_metackhash & CK_SUPERBLOCK) == 0)
  return (fs->fs_ckhash);

 save_ckhash = fs->fs_ckhash;
 fs->fs_ckhash = 0;




 ckhash = calculate_crc32c(~0L, (void *)fs, fs->fs_sbsize);
 fs->fs_ckhash = save_ckhash;
 return (ckhash);
}
