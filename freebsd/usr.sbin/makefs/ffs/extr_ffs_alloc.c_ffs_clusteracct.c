
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct fs {int fs_contigsumsize; int* fs_maxcluster; } ;
struct cg {int cg_cgx; int cg_nclusterblks; } ;
typedef int int32_t ;


 int NBBY ;
 int UFS_FSNEEDSWAP (struct fs*) ;
 int * cg_clustersfree_swap (struct cg*,int const) ;
 int* cg_clustersum_swap (struct cg*,int const) ;
 int clrbit (int *,int) ;
 int setbit (int *,int) ;
 int ufs_add32 (int,int,int const) ;
 size_t ufs_rw32 (int ,int const) ;

void
ffs_clusteracct(struct fs *fs, struct cg *cgp, int32_t blkno, int cnt)
{
 int32_t *sump;
 int32_t *lp;
 u_char *freemapp, *mapp;
 int i, start, end, forw, back, map, bit;
 const int needswap = UFS_FSNEEDSWAP(fs);

 if (fs->fs_contigsumsize <= 0)
  return;
 freemapp = cg_clustersfree_swap(cgp, needswap);
 sump = cg_clustersum_swap(cgp, needswap);



 if (cnt > 0)
  setbit(freemapp, blkno);
 else
  clrbit(freemapp, blkno);



 start = blkno + 1;
 end = start + fs->fs_contigsumsize;
 if ((unsigned)end >= ufs_rw32(cgp->cg_nclusterblks, needswap))
  end = ufs_rw32(cgp->cg_nclusterblks, needswap);
 mapp = &freemapp[start / NBBY];
 map = *mapp++;
 bit = 1 << (start % NBBY);
 for (i = start; i < end; i++) {
  if ((map & bit) == 0)
   break;
  if ((i & (NBBY - 1)) != (NBBY - 1)) {
   bit <<= 1;
  } else {
   map = *mapp++;
   bit = 1;
  }
 }
 forw = i - start;



 start = blkno - 1;
 end = start - fs->fs_contigsumsize;
 if (end < 0)
  end = -1;
 mapp = &freemapp[start / NBBY];
 map = *mapp--;
 bit = 1 << (start % NBBY);
 for (i = start; i > end; i--) {
  if ((map & bit) == 0)
   break;
  if ((i & (NBBY - 1)) != 0) {
   bit >>= 1;
  } else {
   map = *mapp--;
   bit = 1 << (NBBY - 1);
  }
 }
 back = start - i;




 i = back + forw + 1;
 if (i > fs->fs_contigsumsize)
  i = fs->fs_contigsumsize;
 ufs_add32(sump[i], cnt, needswap);
 if (back > 0)
  ufs_add32(sump[back], -cnt, needswap);
 if (forw > 0)
  ufs_add32(sump[forw], -cnt, needswap);




 lp = &sump[fs->fs_contigsumsize];
 for (i = fs->fs_contigsumsize; i > 0; i--)
  if (ufs_rw32(*lp--, needswap) > 0)
   break;
 fs->fs_maxcluster[ufs_rw32(cgp->cg_cgx, needswap)] = i;
}
