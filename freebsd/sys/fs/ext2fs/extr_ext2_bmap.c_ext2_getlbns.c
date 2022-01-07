
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_mount; } ;
struct indir {long in_lbn; int in_off; } ;
struct ext2mount {int dummy; } ;
typedef long int64_t ;
typedef long e2fs_lbn_t ;
typedef long daddr_t ;


 int EFBIG ;
 long EXT2_NDADDR ;
 long EXT2_NIADDR ;
 long MNINDIR (struct ext2mount*) ;
 struct ext2mount* VFSTOEXT2 (int ) ;

int
ext2_getlbns(struct vnode *vp, daddr_t bn, struct indir *ap, int *nump)
{
 long blockcnt;
 e2fs_lbn_t metalbn, realbn;
 struct ext2mount *ump;
 int i, numlevels, off;
 int64_t qblockcnt;

 ump = VFSTOEXT2(vp->v_mount);
 if (nump)
  *nump = 0;
 numlevels = 0;
 realbn = bn;
 if ((long)bn < 0)
  bn = -(long)bn;


 if (bn < EXT2_NDADDR)
  return (0);







 for (blockcnt = 1, i = EXT2_NIADDR, bn -= EXT2_NDADDR; ;
     i--, bn -= blockcnt) {
  if (i == 0)
   return (EFBIG);





  qblockcnt = (int64_t)blockcnt * MNINDIR(ump);
  if (bn < qblockcnt)
   break;
  blockcnt = qblockcnt;
 }


 if (realbn >= 0)
  metalbn = -(realbn - bn + EXT2_NIADDR - i);
 else
  metalbn = -(-realbn - bn + EXT2_NIADDR - i);







 ap->in_lbn = metalbn;
 ap->in_off = off = EXT2_NIADDR - i;
 ap++;
 for (++numlevels; i <= EXT2_NIADDR; i++) {

  if (metalbn == realbn)
   break;

  off = (bn / blockcnt) % MNINDIR(ump);

  ++numlevels;
  ap->in_lbn = metalbn;
  ap->in_off = off;
  ++ap;

  metalbn -= -1 + off * blockcnt;
  blockcnt /= MNINDIR(ump);
 }
 if (nump)
  *nump = numlevels;
 return (0);
}
