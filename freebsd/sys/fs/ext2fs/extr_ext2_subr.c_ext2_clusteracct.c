
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_ext2fs {int e2fs_contigsumsize; int* e2fs_maxcluster; TYPE_2__* e2fs; TYPE_1__* e2fs_clustersum; } ;
typedef int int32_t ;
typedef size_t e4fs_daddr_t ;
struct TYPE_4__ {int e2fs_fpg; } ;
struct TYPE_3__ {int* cs_sum; int cs_init; } ;


 int NBBY ;

void
ext2_clusteracct(struct m_ext2fs *fs, char *bbp, int cg, e4fs_daddr_t bno, int cnt)
{
 int32_t *sump = fs->e2fs_clustersum[cg].cs_sum;
 int32_t *lp;
 e4fs_daddr_t start, end, loc, forw, back;
 int bit, i;


 if (fs->e2fs_clustersum[cg].cs_init == 0) {
  int run = 0;

  bit = 1;
  loc = 0;

  for (i = 0; i < fs->e2fs->e2fs_fpg; i++) {
   if ((bbp[loc] & bit) == 0)
    run++;
   else if (run != 0) {
    if (run > fs->e2fs_contigsumsize)
     run = fs->e2fs_contigsumsize;
    sump[run]++;
    run = 0;
   }
   if ((i & (NBBY - 1)) != (NBBY - 1))
    bit <<= 1;
   else {
    loc++;
    bit = 1;
   }
  }
  if (run != 0) {
   if (run > fs->e2fs_contigsumsize)
    run = fs->e2fs_contigsumsize;
   sump[run]++;
  }
  fs->e2fs_clustersum[cg].cs_init = 1;
 }

 if (fs->e2fs_contigsumsize <= 0)
  return;


 start = bno + 1;
 end = start + fs->e2fs_contigsumsize;
 if (end > fs->e2fs->e2fs_fpg)
  end = fs->e2fs->e2fs_fpg;
 loc = start / NBBY;
 bit = 1 << (start % NBBY);
 for (i = start; i < end; i++) {
  if ((bbp[loc] & bit) != 0)
   break;
  if ((i & (NBBY - 1)) != (NBBY - 1))
   bit <<= 1;
  else {
   loc++;
   bit = 1;
  }
 }
 forw = i - start;


 start = bno - 1;
 end = start - fs->e2fs_contigsumsize;
 if (end < 0)
  end = -1;
 loc = start / NBBY;
 bit = 1 << (start % NBBY);
 for (i = start; i > end; i--) {
  if ((bbp[loc] & bit) != 0)
   break;
  if ((i & (NBBY - 1)) != 0)
   bit >>= 1;
  else {
   loc--;
   bit = 1 << (NBBY - 1);
  }
 }
 back = start - i;





 i = back + forw + 1;
 if (i > fs->e2fs_contigsumsize)
  i = fs->e2fs_contigsumsize;
 sump[i] += cnt;
 if (back > 0)
  sump[back] -= cnt;
 if (forw > 0)
  sump[forw] -= cnt;


 lp = &sump[fs->e2fs_contigsumsize];
 for (i = fs->e2fs_contigsumsize; i > 0; i--)
  if (*lp-- > 0)
   break;
 fs->e2fs_maxcluster[cg] = i;
}
