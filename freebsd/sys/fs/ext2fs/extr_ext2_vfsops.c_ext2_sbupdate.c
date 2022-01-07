
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct m_ext2fs {int e2fs_bcount; int e2fs_rbcount; int e2fs_fbcount; struct ext2fs* e2fs; } ;
struct ext2mount {int um_devvp; struct m_ext2fs* um_e2fs; } ;
struct ext2fs {int e2fs_bcount; int e2fs_rbcount; int e2fs_fbcount; int e4fs_bcount_hi; int e4fs_rbcount_hi; int e4fs_fbcount_hi; } ;
struct buf {int b_data; } ;
typedef int caddr_t ;


 int EXT2F_INCOMPAT_64BIT ;
 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 scalar_t__ EXT2_HAS_INCOMPAT_FEATURE (struct m_ext2fs*,int ) ;
 scalar_t__ EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int MNT_WAIT ;
 int SBLOCK ;
 int SBSIZE ;
 int bawrite (struct buf*) ;
 int bcopy (int ,int ,int ) ;
 int bwrite (struct buf*) ;
 int ext2_sb_csum_set (struct m_ext2fs*) ;
 struct buf* getblk (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
ext2_sbupdate(struct ext2mount *mp, int waitfor)
{
 struct m_ext2fs *fs = mp->um_e2fs;
 struct ext2fs *es = fs->e2fs;
 struct buf *bp;
 int error = 0;

 es->e2fs_bcount = fs->e2fs_bcount & 0xffffffff;
 es->e2fs_rbcount = fs->e2fs_rbcount & 0xffffffff;
 es->e2fs_fbcount = fs->e2fs_fbcount & 0xffffffff;
 if (EXT2_HAS_INCOMPAT_FEATURE(fs, EXT2F_INCOMPAT_64BIT)) {
  es->e4fs_bcount_hi = fs->e2fs_bcount >> 32;
  es->e4fs_rbcount_hi = fs->e2fs_rbcount >> 32;
  es->e4fs_fbcount_hi = fs->e2fs_fbcount >> 32;
 }

 if (EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
  ext2_sb_csum_set(fs);

 bp = getblk(mp->um_devvp, SBLOCK, SBSIZE, 0, 0, 0);
 bcopy((caddr_t)es, bp->b_data, (u_int)sizeof(struct ext2fs));
 if (waitfor == MNT_WAIT)
  error = bwrite(bp);
 else
  bawrite(bp);






 return (error);
}
