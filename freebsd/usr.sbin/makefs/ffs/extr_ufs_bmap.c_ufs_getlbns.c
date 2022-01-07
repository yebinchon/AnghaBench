
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct inode {int i_fs; } ;
struct indir {int in_lbn; int in_off; } ;
typedef int int64_t ;
typedef int daddr_t ;


 int EFBIG ;
 int NINDIR (int ) ;
 int UFS_NDADDR ;
 int UFS_NIADDR ;
 int assert (int) ;
 scalar_t__ ffs (int) ;

int
ufs_getlbns(struct inode *ip, daddr_t bn, struct indir *ap, int *nump)
{
 daddr_t metalbn, realbn;
 int64_t blockcnt;
 int lbc;
 int i, numlevels, off;
 u_long lognindir;

 lognindir = ffs(NINDIR(ip->i_fs)) - 1;
 if (nump)
  *nump = 0;
 numlevels = 0;
 realbn = bn;
 if ((long)bn < 0)
  bn = -(long)bn;

 assert (bn >= UFS_NDADDR);
 bn -= UFS_NDADDR;
 for (lbc = 0, i = UFS_NIADDR;; i--, bn -= blockcnt) {
  if (i == 0)
   return (EFBIG);

  lbc += lognindir;
  blockcnt = (int64_t)1 << lbc;

  if (bn < blockcnt)
   break;
 }


 if (realbn >= 0)
  metalbn = -(realbn - bn + UFS_NIADDR - i);
 else
  metalbn = -(-realbn - bn + UFS_NIADDR - i);







 ap->in_lbn = metalbn;
 ap->in_off = off = UFS_NIADDR - i;
 ap++;
 for (++numlevels; i <= UFS_NIADDR; i++) {

  if (metalbn == realbn)
   break;

  lbc -= lognindir;
  blockcnt = (int64_t)1 << lbc;
  off = (bn >> lbc) & (NINDIR(ip->i_fs) - 1);

  ++numlevels;
  ap->in_lbn = metalbn;
  ap->in_off = off;
  ++ap;

  metalbn -= -1 + (off << lbc);
 }
 if (nump)
  *nump = numlevels;
 return (0);
}
