
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct m_ext2fs {int e2fs_fmod; TYPE_1__* e2fs; int * e2fs_gd; int e2fs_fbcount; int e2fs_fsmnt; scalar_t__ e2fs_bsize; } ;
struct inode {int i_devvp; struct ext2mount* i_ump; struct m_ext2fs* i_e2fs; } ;
struct ext2mount {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef int intmax_t ;
typedef int daddr_t ;
struct TYPE_2__ {int e2fs_fpg; int e2fs_first_dblock; } ;


 int EXT2F_ROCOMPAT_GDT_CSUM ;
 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 scalar_t__ EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int EXT2_LOCK (struct ext2mount*) ;
 int EXT2_UNLOCK (struct ext2mount*) ;
 int NBBY ;
 int NOCRED ;
 int bdwrite (struct buf*) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int dtog (struct m_ext2fs*,int) ;
 int dtogd (struct m_ext2fs*,int) ;
 int e2fs_gd_get_b_bitmap (int *) ;
 scalar_t__ e2fs_gd_get_nbfree (int *) ;
 int e2fs_gd_set_nbfree (int *,scalar_t__) ;
 int ext2_b_bitmap_validate (struct m_ext2fs*,struct buf*,int) ;
 int ext2_cg_block_bitmap_init (struct m_ext2fs*,int,struct buf*) ;
 int ext2_clusteracct (struct m_ext2fs*,char*,int,int,int) ;
 int ext2_gd_b_bitmap_csum_set (struct m_ext2fs*,int,struct buf*) ;
 int ext2_gd_b_bitmap_csum_verify (struct m_ext2fs*,int,struct buf*) ;
 int ext2_mapsearch (struct m_ext2fs*,char*,int) ;
 int ffs (char) ;
 int fls (char) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 int howmany (int,int) ;
 scalar_t__ isclr (char*,int) ;
 scalar_t__ isset (char*,int) ;
 int panic (char*) ;
 int printf (char*,int,int ,int ) ;
 int setbit (char*,int) ;

__attribute__((used)) static daddr_t
ext2_alloccg(struct inode *ip, int cg, daddr_t bpref, int size)
{
 struct m_ext2fs *fs;
 struct buf *bp;
 struct ext2mount *ump;
 daddr_t bno, runstart, runlen;
 int bit, loc, end, error, start;
 char *bbp;

 fs = ip->i_e2fs;
 ump = ip->i_ump;
 if (e2fs_gd_get_nbfree(&fs->e2fs_gd[cg]) == 0)
  return (0);

 EXT2_UNLOCK(ump);
 error = bread(ip->i_devvp, fsbtodb(fs,
     e2fs_gd_get_b_bitmap(&fs->e2fs_gd[cg])),
     (int)fs->e2fs_bsize, NOCRED, &bp);
 if (error)
  goto fail;

 if (EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_GDT_CSUM) ||
     EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM)) {
  error = ext2_cg_block_bitmap_init(fs, cg, bp);
  if (error)
   goto fail;

  ext2_gd_b_bitmap_csum_set(fs, cg, bp);
 }
 error = ext2_gd_b_bitmap_csum_verify(fs, cg, bp);
 if (error)
  goto fail;

 error = ext2_b_bitmap_validate(fs,bp, cg);
 if (error)
  goto fail;





 if (e2fs_gd_get_nbfree(&fs->e2fs_gd[cg]) == 0)
  goto fail;

 bbp = (char *)bp->b_data;

 if (dtog(fs, bpref) != cg)
  bpref = 0;
 if (bpref != 0) {
  bpref = dtogd(fs, bpref);



  if (isclr(bbp, bpref)) {
   bno = bpref;
   goto gotit;
  }
 }






 if (bpref)
  start = dtogd(fs, bpref) / NBBY;
 else
  start = 0;
 end = howmany(fs->e2fs->e2fs_fpg, NBBY) - start;
retry:
 runlen = 0;
 runstart = 0;
 for (loc = start; loc < end; loc++) {
  if (bbp[loc] == (char)0xff) {
   runlen = 0;
   continue;
  }


  if (runlen == 0) {
   bit = fls(bbp[loc]);
   runlen = NBBY - bit;
   runstart = loc * NBBY + bit;
  } else if (bbp[loc] == 0) {

   runlen += NBBY;
  } else {




   bit = ffs(bbp[loc]) - 1;
   runlen += bit;
   if (runlen >= 8) {
    bno = runstart;
    goto gotit;
   }


   bit = fls(bbp[loc]);
   runlen = NBBY - bit;
   runstart = loc * NBBY + bit;
  }


  if (runlen >= 8) {
   bno = runstart;
   goto gotit;
  }
 }
 if (start != 0) {
  end = start;
  start = 0;
  goto retry;
 }
 bno = ext2_mapsearch(fs, bbp, bpref);
 if (bno < 0)
  goto fail;

gotit:







 setbit(bbp, bno);
 EXT2_LOCK(ump);
 ext2_clusteracct(fs, bbp, cg, bno, -1);
 fs->e2fs_fbcount--;
 e2fs_gd_set_nbfree(&fs->e2fs_gd[cg],
     e2fs_gd_get_nbfree(&fs->e2fs_gd[cg]) - 1);
 fs->e2fs_fmod = 1;
 EXT2_UNLOCK(ump);
 ext2_gd_b_bitmap_csum_set(fs, cg, bp);
 bdwrite(bp);
 return (((uint64_t)cg) * fs->e2fs->e2fs_fpg + fs->e2fs->e2fs_first_dblock + bno);

fail:
 brelse(bp);
 EXT2_LOCK(ump);
 return (0);
}
