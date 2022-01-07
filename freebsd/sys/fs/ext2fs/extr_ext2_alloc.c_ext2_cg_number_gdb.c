
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct m_ext2fs {TYPE_1__* e2fs; } ;
struct TYPE_2__ {unsigned long e3fs_first_meta_bg; } ;


 int EXT2F_INCOMPAT_META_BG ;
 int EXT2_DESCS_PER_BLOCK (struct m_ext2fs*) ;
 int EXT2_HAS_INCOMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int ext2_cg_number_gdb_meta (struct m_ext2fs*,int) ;
 int ext2_cg_number_gdb_nometa (struct m_ext2fs*,int) ;

uint64_t
ext2_cg_number_gdb(struct m_ext2fs *fs, int cg)
{
 unsigned long first_meta_bg, metagroup;

 first_meta_bg = fs->e2fs->e3fs_first_meta_bg;
 metagroup = cg / EXT2_DESCS_PER_BLOCK(fs);

 if (!EXT2_HAS_INCOMPAT_FEATURE(fs, EXT2F_INCOMPAT_META_BG) ||
     metagroup < first_meta_bg)
  return (ext2_cg_number_gdb_nometa(fs, cg));

 return ext2_cg_number_gdb_meta(fs, cg);
}
