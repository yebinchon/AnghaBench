
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_ext2fs {scalar_t__ e2fs_csum_seed; TYPE_1__* e2fs; } ;
struct TYPE_2__ {int e2fs_uuid; scalar_t__ e4fs_chksum_seed; } ;


 int EXT2F_INCOMPAT_CSUM_SEED ;
 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 scalar_t__ EXT2_HAS_INCOMPAT_FEATURE (struct m_ext2fs*,int ) ;
 scalar_t__ EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 scalar_t__ calculate_crc32c (int ,int ,int) ;

void
ext2_sb_csum_set_seed(struct m_ext2fs *fs)
{

 if (EXT2_HAS_INCOMPAT_FEATURE(fs, EXT2F_INCOMPAT_CSUM_SEED))
  fs->e2fs_csum_seed = fs->e2fs->e4fs_chksum_seed;
 else if (EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM)) {
  fs->e2fs_csum_seed = calculate_crc32c(~0, fs->e2fs->e2fs_uuid,
      sizeof(fs->e2fs->e2fs_uuid));
 }
 else
  fs->e2fs_csum_seed = 0;
}
