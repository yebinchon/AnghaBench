
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs1_daddr_t ;
typedef int u_int ;
typedef int u_char ;
struct fs {int fs_contigsumsize; int* fs_maxcluster; } ;
struct cg {int cg_nclusterblks; size_t cg_cgx; } ;
typedef int int32_t ;


 int NBBY ;
 int * cg_clustersfree (struct cg*) ;
 int* cg_clustersum (struct cg*) ;
 int clrbit (int *,int) ;
 int setbit (int *,int) ;

void
ffs_clusteracct(struct fs *fs, struct cg *cgp, ufs1_daddr_t blkno, int cnt)
{
 int32_t *sump;
 int32_t *lp;
 u_char *freemapp, *mapp;
 int i, start, end, forw, back, map;
 u_int bit;

 if (fs->fs_contigsumsize <= 0)
  return;
 freemapp = cg_clustersfree(cgp);
 sump = cg_clustersum(cgp);



 if (cnt > 0)
  setbit(freemapp, blkno);
 else
  clrbit(freemapp, blkno);



 start = blkno + 1;
 end = start + fs->fs_contigsumsize;
 if (end >= cgp->cg_nclusterblks)
  end = cgp->cg_nclusterblks;
 mapp = &freemapp[start / NBBY];
 map = *mapp++;
 bit = 1U << (start % NBBY);
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
 bit = 1U << (start % NBBY);
 for (i = start; i > end; i--) {
  if ((map & bit) == 0)
   break;
  if ((i & (NBBY - 1)) != 0) {
   bit >>= 1;
  } else {
   map = *mapp--;
   bit = 1U << (NBBY - 1);
  }
 }
 back = start - i;




 i = back + forw + 1;
 if (i > fs->fs_contigsumsize)
  i = fs->fs_contigsumsize;
 sump[i] += cnt;
 if (back > 0)
  sump[back] -= cnt;
 if (forw > 0)
  sump[forw] -= cnt;



 lp = &sump[fs->fs_contigsumsize];
 for (i = fs->fs_contigsumsize; i > 0; i--)
  if (*lp-- > 0)
   break;
 fs->fs_maxcluster[cgp->cg_cgx] = i;
}
