
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_ext2fs {int e2fs_gdbcount; int e2fs_bsize; int e2fs_gcount; int * e2fs_gd; } ;
struct ext2mount {int um_devvp; struct m_ext2fs* um_e2fs; } ;
struct ext2_gd {int dummy; } ;
struct buf {scalar_t__ b_data; } ;


 int E2FS_REV0_GD_SIZE ;
 int EXT2F_INCOMPAT_64BIT ;
 int EXT2F_ROCOMPAT_GDT_CSUM ;
 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 scalar_t__ EXT2_HAS_INCOMPAT_FEATURE (struct m_ext2fs*,int ) ;
 scalar_t__ EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int MNT_WAIT ;
 int bawrite (struct buf*) ;
 int bwrite (struct buf*) ;
 int ext2_cg_location (struct m_ext2fs*,int) ;
 int ext2_gd_csum_set (struct m_ext2fs*) ;
 int ext2_sbupdate (struct ext2mount*,int) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 struct buf* getblk (int ,int ,int,int ,int ,int ) ;
 int memcpy (scalar_t__,int *,int) ;

int
ext2_cgupdate(struct ext2mount *mp, int waitfor)
{
 struct m_ext2fs *fs = mp->um_e2fs;
 struct buf *bp;
 int i, j, g_count = 0, error = 0, allerror = 0;

 allerror = ext2_sbupdate(mp, waitfor);


 if (EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_GDT_CSUM) ||
     EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
  ext2_gd_csum_set(fs);

 for (i = 0; i < fs->e2fs_gdbcount; i++) {
  bp = getblk(mp->um_devvp, fsbtodb(fs,
      ext2_cg_location(fs, i)),
      fs->e2fs_bsize, 0, 0, 0);
  if (EXT2_HAS_INCOMPAT_FEATURE(fs, EXT2F_INCOMPAT_64BIT)) {
   memcpy(bp->b_data, &fs->e2fs_gd[
       i * fs->e2fs_bsize / sizeof(struct ext2_gd)],
       fs->e2fs_bsize);
  } else {
   for (j = 0; j < fs->e2fs_bsize / E2FS_REV0_GD_SIZE &&
       g_count < fs->e2fs_gcount; j++, g_count++)
    memcpy(bp->b_data + j * E2FS_REV0_GD_SIZE,
        &fs->e2fs_gd[g_count], E2FS_REV0_GD_SIZE);
  }
  if (waitfor == MNT_WAIT)
   error = bwrite(bp);
  else
   bawrite(bp);
 }

 if (!allerror && error)
  allerror = error;
 return (allerror);
}
