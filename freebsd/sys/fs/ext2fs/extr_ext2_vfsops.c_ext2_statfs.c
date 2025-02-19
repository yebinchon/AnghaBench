
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct statfs {int f_blocks; int f_ffree; int f_files; scalar_t__ f_bfree; scalar_t__ f_bavail; int f_iosize; int f_bsize; } ;
struct mount {int dummy; } ;
struct m_ext2fs {int e2fs_itpg; int e2fs_gcount; int e2fs_gdbcount; int e2fs_bcount; TYPE_1__* e2fs; scalar_t__ e2fs_rbcount; scalar_t__ e2fs_fbcount; } ;
struct ext2mount {struct m_ext2fs* um_e2fs; } ;
struct TYPE_2__ {scalar_t__ e2fs_magic; int e2fs_first_dblock; scalar_t__ e2fs_rev; int e2fs_features_rocompat; int e2fs_features_compat; int e2fs_ficount; int e2fs_icount; scalar_t__ e2fs_reserved_ngdb; } ;


 scalar_t__ E2FS_MAGIC ;
 scalar_t__ E2FS_REV0 ;
 int EXT2F_COMPAT_RESIZE ;
 int EXT2F_ROCOMPAT_SPARSESUPER ;
 int EXT2_BLOCK_SIZE (struct m_ext2fs*) ;
 int EXT2_FRAG_SIZE (struct m_ext2fs*) ;
 struct ext2mount* VFSTOEXT2 (struct mount*) ;
 scalar_t__ ext2_cg_has_sb (struct m_ext2fs*,int) ;
 int panic (char*) ;

int
ext2_statfs(struct mount *mp, struct statfs *sbp)
{
 struct ext2mount *ump;
 struct m_ext2fs *fs;
 uint32_t overhead, overhead_per_group, ngdb;
 int i, ngroups;

 ump = VFSTOEXT2(mp);
 fs = ump->um_e2fs;
 if (fs->e2fs->e2fs_magic != E2FS_MAGIC)
  panic("ext2_statfs");




 overhead_per_group =
     1 +
     1 +
     fs->e2fs_itpg;
 overhead = fs->e2fs->e2fs_first_dblock +
     fs->e2fs_gcount * overhead_per_group;
 if (fs->e2fs->e2fs_rev > E2FS_REV0 &&
     fs->e2fs->e2fs_features_rocompat & EXT2F_ROCOMPAT_SPARSESUPER) {
  for (i = 0, ngroups = 0; i < fs->e2fs_gcount; i++) {
   if (ext2_cg_has_sb(fs, i))
    ngroups++;
  }
 } else {
  ngroups = fs->e2fs_gcount;
 }
 ngdb = fs->e2fs_gdbcount;
 if (fs->e2fs->e2fs_rev > E2FS_REV0 &&
     fs->e2fs->e2fs_features_compat & EXT2F_COMPAT_RESIZE)
  ngdb += fs->e2fs->e2fs_reserved_ngdb;
 overhead += ngroups * (1 + ngdb);

 sbp->f_bsize = EXT2_FRAG_SIZE(fs);
 sbp->f_iosize = EXT2_BLOCK_SIZE(fs);
 sbp->f_blocks = fs->e2fs_bcount - overhead;
 sbp->f_bfree = fs->e2fs_fbcount;
 sbp->f_bavail = sbp->f_bfree - fs->e2fs_rbcount;
 sbp->f_files = fs->e2fs->e2fs_icount;
 sbp->f_ffree = fs->e2fs->e2fs_ficount;
 return (0);
}
