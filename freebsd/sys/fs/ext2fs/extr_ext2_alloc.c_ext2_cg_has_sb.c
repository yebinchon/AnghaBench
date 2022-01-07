
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_ext2fs {TYPE_1__* e2fs; } ;
struct TYPE_2__ {int* e4fs_backup_bgs; } ;


 int EXT2F_COMPAT_SPARSESUPER2 ;
 int EXT2F_ROCOMPAT_SPARSESUPER ;
 scalar_t__ EXT2_HAS_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;

int
ext2_cg_has_sb(struct m_ext2fs *fs, int cg)
{
 int a3, a5, a7;

 if (cg == 0)
  return (1);

 if (EXT2_HAS_COMPAT_FEATURE(fs, EXT2F_COMPAT_SPARSESUPER2)) {
  if (cg == fs->e2fs->e4fs_backup_bgs[0] ||
      cg == fs->e2fs->e4fs_backup_bgs[1])
   return (1);
  return (0);
 }

 if ((cg <= 1) ||
     !EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_SPARSESUPER))
  return (1);

 if (!(cg & 1))
  return (0);

 for (a3 = 3, a5 = 5, a7 = 7;
     a3 <= cg || a5 <= cg || a7 <= cg;
     a3 *= 3, a5 *= 5, a7 *= 7)
  if (cg == a3 || cg == a5 || cg == a7)
   return (1);
 return (0);
}
