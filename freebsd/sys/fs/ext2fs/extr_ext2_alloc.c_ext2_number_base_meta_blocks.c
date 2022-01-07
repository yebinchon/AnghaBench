
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_ext2fs {TYPE_1__* e2fs; } ;
struct TYPE_2__ {int e3fs_first_meta_bg; scalar_t__ e2fs_reserved_ngdb; } ;


 int EXT2F_INCOMPAT_META_BG ;
 int EXT2_DESCS_PER_BLOCK (struct m_ext2fs*) ;
 int EXT2_HAS_INCOMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int ext2_cg_has_sb (struct m_ext2fs*,int) ;
 scalar_t__ ext2_cg_number_gdb (struct m_ext2fs*,int) ;

__attribute__((used)) static int
ext2_number_base_meta_blocks(struct m_ext2fs *fs, int cg)
{
 int number;

 number = ext2_cg_has_sb(fs, cg);

 if (!EXT2_HAS_INCOMPAT_FEATURE(fs, EXT2F_INCOMPAT_META_BG) ||
     cg < fs->e2fs->e3fs_first_meta_bg * EXT2_DESCS_PER_BLOCK(fs)) {
  if (number) {
   number += ext2_cg_number_gdb(fs, cg);
   number += fs->e2fs->e2fs_reserved_ngdb;
  }
 } else {
  number += ext2_cg_number_gdb(fs, cg);
 }

 return (number);
}
