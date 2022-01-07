
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct fs {size_t fs_frag; int fs_fpg; } ;
struct cg {int cg_frotor; int cg_freeoff; } ;
typedef int int32_t ;
typedef scalar_t__ daddr_t ;


 int NBBY ;
 int UFS_FSNEEDSWAP (struct fs*) ;
 int* around ;
 int blkmap (struct fs*,int *,int) ;
 int * cg_blksfree_swap (struct cg*,int const) ;
 int dtogd (struct fs*,scalar_t__) ;
 int errx (int,char*,long long,...) ;
 scalar_t__* fragtbl ;
 int howmany (int ,int) ;
 int* inside ;
 int scanc (int ,int const*,int const*,int) ;
 int ufs_rw32 (int,int const) ;

__attribute__((used)) static int32_t
ffs_mapsearch(struct fs *fs, struct cg *cgp, daddr_t bpref, int allocsiz)
{
 int32_t bno;
 int start, len, loc, i;
 int blk, field, subfield, pos;
 int ostart, olen;
 const int needswap = UFS_FSNEEDSWAP(fs);





 if (bpref)
  start = dtogd(fs, bpref) / NBBY;
 else
  start = ufs_rw32(cgp->cg_frotor, needswap) / NBBY;
 len = howmany(fs->fs_fpg, NBBY) - start;
 ostart = start;
 olen = len;
 loc = scanc((u_int)len,
  (const u_char *)&cg_blksfree_swap(cgp, needswap)[start],
  (const u_char *)fragtbl[fs->fs_frag],
  (1 << (allocsiz - 1 + (fs->fs_frag % NBBY))));
 if (loc == 0) {
  len = start + 1;
  start = 0;
  loc = scanc((u_int)len,
   (const u_char *)&cg_blksfree_swap(cgp, needswap)[0],
   (const u_char *)fragtbl[fs->fs_frag],
   (1 << (allocsiz - 1 + (fs->fs_frag % NBBY))));
  if (loc == 0) {
   errx(1,
    "ffs_alloccg: map corrupted: start %d len %d offset %d %ld",
    ostart, olen,
    ufs_rw32(cgp->cg_freeoff, needswap),
    (long)cg_blksfree_swap(cgp, needswap) - (long)cgp);

  }
 }
 bno = (start + len - loc) * NBBY;
 cgp->cg_frotor = ufs_rw32(bno, needswap);




 for (i = bno + NBBY; bno < i; bno += fs->fs_frag) {
  blk = blkmap(fs, cg_blksfree_swap(cgp, needswap), bno);
  blk <<= 1;
  field = around[allocsiz];
  subfield = inside[allocsiz];
  for (pos = 0; pos <= fs->fs_frag - allocsiz; pos++) {
   if ((blk & field) == subfield)
    return (bno + pos);
   field <<= 1;
   subfield <<= 1;
  }
 }
 errx(1, "ffs_alloccg: block not in map: bno %lld", (long long)bno);
 return (-1);
}
