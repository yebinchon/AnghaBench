
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct inode {scalar_t__ i_ffs1_size; scalar_t__* i_ffs1_db; scalar_t__* i_ffs1_ib; int i_devvp; struct fs* i_fs; } ;
struct indir {size_t in_off; scalar_t__ in_lbn; } ;
struct fs {int fs_bsize; } ;
struct buf {void* b_blkno; scalar_t__ b_data; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ daddr_t ;


 int EFBIG ;
 int UFS_FSNEEDSWAP (struct fs*) ;
 scalar_t__ UFS_NDADDR ;
 int UFS_NIADDR ;
 int abort () ;
 int assert (int) ;
 int blkoff (struct fs*,scalar_t__) ;
 int blksize (struct fs*,struct inode*,scalar_t__) ;
 int bread (int ,scalar_t__,int,int *,struct buf**) ;
 int brelse (struct buf*) ;
 int bwrite (struct buf*) ;
 int clrbuf (struct buf*) ;
 int ffs_alloc (struct inode*,scalar_t__,scalar_t__,int,scalar_t__*) ;
 scalar_t__ ffs_blkpref_ufs1 (struct inode*,scalar_t__,int,scalar_t__*) ;
 int fragroundup (struct fs*,int) ;
 void* fsbtodb (struct fs*,scalar_t__) ;
 struct buf* getblk (int ,scalar_t__,int,int ,int ,int ) ;
 scalar_t__ lblkno (struct fs*,scalar_t__) ;
 scalar_t__ lblktosize (struct fs*,scalar_t__) ;
 int ufs_getlbns (struct inode*,scalar_t__,struct indir*,int*) ;
 scalar_t__ ufs_rw32 (scalar_t__,int const) ;
 int warnx (char*) ;

__attribute__((used)) static int
ffs_balloc_ufs1(struct inode *ip, off_t offset, int bufsize, struct buf **bpp)
{
 daddr_t lbn, lastlbn;
 int size;
 int32_t nb;
 struct buf *bp, *nbp;
 struct fs *fs = ip->i_fs;
 struct indir indirs[UFS_NIADDR + 2];
 daddr_t newb, pref;
 int32_t *bap;
 int osize, nsize, num, i, error;
 int32_t *allocblk, allociblk[UFS_NIADDR + 1];
 int32_t *allocib;
 const int needswap = UFS_FSNEEDSWAP(fs);

 lbn = lblkno(fs, offset);
 size = blkoff(fs, offset) + bufsize;
 if (bpp != ((void*)0)) {
  *bpp = ((void*)0);
 }

 assert(size <= fs->fs_bsize);
 if (lbn < 0)
  return (EFBIG);







 lastlbn = lblkno(fs, ip->i_ffs1_size);
 if (lastlbn < UFS_NDADDR && lastlbn < lbn) {
  nb = lastlbn;
  osize = blksize(fs, ip, nb);
  if (osize < fs->fs_bsize && osize > 0) {
   warnx("need to ffs_realloccg; not supported!");
   abort();
  }
 }





 if (lbn < UFS_NDADDR) {
  nb = ufs_rw32(ip->i_ffs1_db[lbn], needswap);
  if (nb != 0 && ip->i_ffs1_size >=
      (uint64_t)lblktosize(fs, lbn + 1)) {
   if (bpp != ((void*)0)) {
    error = bread(ip->i_devvp, lbn, fs->fs_bsize,
        ((void*)0), bpp);
    if (error) {
     brelse(*bpp);
     return (error);
    }
   }
   return (0);
  }
  if (nb != 0) {





   osize = fragroundup(fs, blkoff(fs, ip->i_ffs1_size));
   nsize = fragroundup(fs, size);
   if (nsize <= osize) {







    if (bpp != ((void*)0)) {
     error = bread(ip->i_devvp, lbn, osize,
         ((void*)0), bpp);
     if (error) {
      brelse(*bpp);
      return (error);
     }
    }
    return 0;
   } else {
    warnx("need to ffs_realloccg; not supported!");
    abort();
   }
  } else {






   if (ip->i_ffs1_size < (uint64_t)lblktosize(fs, lbn + 1))
    nsize = fragroundup(fs, size);
   else
    nsize = fs->fs_bsize;
   error = ffs_alloc(ip, lbn,
       ffs_blkpref_ufs1(ip, lbn, (int)lbn,
    &ip->i_ffs1_db[0]),
    nsize, &newb);
   if (error)
    return (error);
   if (bpp != ((void*)0)) {
    bp = getblk(ip->i_devvp, lbn, nsize, 0, 0, 0);
    bp->b_blkno = fsbtodb(fs, newb);
    clrbuf(bp);
    *bpp = bp;
   }
  }
  ip->i_ffs1_db[lbn] = ufs_rw32((int32_t)newb, needswap);
  return (0);
 }





 pref = 0;
 if ((error = ufs_getlbns(ip, lbn, indirs, &num)) != 0)
  return (error);

 if (num < 1) {
  warnx("ffs_balloc: ufs_getlbns returned indirect block");
  abort();
 }





 --num;
 nb = ufs_rw32(ip->i_ffs1_ib[indirs[0].in_off], needswap);
 allocib = ((void*)0);
 allocblk = allociblk;
 if (nb == 0) {
  pref = ffs_blkpref_ufs1(ip, lbn, 0, (int32_t *)0);
  error = ffs_alloc(ip, lbn, pref, (int)fs->fs_bsize, &newb);
  if (error)
   return error;
  nb = newb;
  *allocblk++ = nb;
  bp = getblk(ip->i_devvp, indirs[1].in_lbn, fs->fs_bsize, 0, 0, 0);
  bp->b_blkno = fsbtodb(fs, nb);
  clrbuf(bp);




  if ((error = bwrite(bp)) != 0)
   return error;
  allocib = &ip->i_ffs1_ib[indirs[0].in_off];
  *allocib = ufs_rw32((int32_t)nb, needswap);
 }





 for (i = 1;;) {
  error = bread(ip->i_devvp, indirs[i].in_lbn, fs->fs_bsize,
      ((void*)0), &bp);
  if (error) {
   brelse(bp);
   return error;
  }
  bap = (int32_t *)bp->b_data;
  nb = ufs_rw32(bap[indirs[i].in_off], needswap);
  if (i == num)
   break;
  i++;
  if (nb != 0) {
   brelse(bp);
   continue;
  }
  if (pref == 0)
   pref = ffs_blkpref_ufs1(ip, lbn, 0, (int32_t *)0);
  error = ffs_alloc(ip, lbn, pref, (int)fs->fs_bsize, &newb);
  if (error) {
   brelse(bp);
   return error;
  }
  nb = newb;
  *allocblk++ = nb;
  nbp = getblk(ip->i_devvp, indirs[i].in_lbn, fs->fs_bsize, 0, 0, 0);
  nbp->b_blkno = fsbtodb(fs, nb);
  clrbuf(nbp);





  if ((error = bwrite(nbp)) != 0) {
   brelse(bp);
   return error;
  }
  bap[indirs[i - 1].in_off] = ufs_rw32(nb, needswap);

  bwrite(bp);
 }





 if (nb == 0) {
  pref = ffs_blkpref_ufs1(ip, lbn, indirs[num].in_off, &bap[0]);
  error = ffs_alloc(ip, lbn, pref, (int)fs->fs_bsize, &newb);
  if (error) {
   brelse(bp);
   return error;
  }
  nb = newb;
  *allocblk++ = nb;
  if (bpp != ((void*)0)) {
   nbp = getblk(ip->i_devvp, lbn, fs->fs_bsize, 0, 0, 0);
   nbp->b_blkno = fsbtodb(fs, nb);
   clrbuf(nbp);
   *bpp = nbp;
  }
  bap[indirs[num].in_off] = ufs_rw32(nb, needswap);





  bwrite(bp);
  return (0);
 }
 brelse(bp);
 if (bpp != ((void*)0)) {
  error = bread(ip->i_devvp, lbn, (int)fs->fs_bsize, ((void*)0), &nbp);
  if (error) {
   brelse(nbp);
   return error;
  }
  *bpp = nbp;
 }
 return (0);
}
