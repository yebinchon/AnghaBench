
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_strategy_args {int a_vp; struct buf* a_bp; } ;
struct denode {TYPE_1__* de_pmp; } ;
struct bufobj {int dummy; } ;
struct buf {int b_blkno; int b_lblkno; int b_error; int b_iooffset; int b_ioflags; } ;
typedef int daddr_t ;
struct TYPE_2__ {struct bufobj* pm_bo; } ;


 int BIO_ERROR ;
 int BO_STRATEGY (struct bufobj*,struct buf*) ;
 struct denode* VTODE (int ) ;
 int bufdone (struct buf*) ;
 int dbtob (int) ;
 int pcbmap (struct denode*,int,int*,int ,int ) ;
 int vfs_bio_clrbuf (struct buf*) ;

__attribute__((used)) static int
msdosfs_strategy(struct vop_strategy_args *ap)
{
 struct buf *bp = ap->a_bp;
 struct denode *dep = VTODE(ap->a_vp);
 struct bufobj *bo;
 int error = 0;
 daddr_t blkno;







 if (bp->b_blkno == bp->b_lblkno) {
  error = pcbmap(dep, bp->b_lblkno, &blkno, 0, 0);
  bp->b_blkno = blkno;
  if (error) {
   bp->b_error = error;
   bp->b_ioflags |= BIO_ERROR;
   bufdone(bp);
   return (0);
  }
  if ((long)bp->b_blkno == -1)
   vfs_bio_clrbuf(bp);
 }
 if (bp->b_blkno == -1) {
  bufdone(bp);
  return (0);
 }




 bp->b_iooffset = dbtob(bp->b_blkno);
 bo = dep->de_pmp->pm_bo;
 BO_STRATEGY(bo, bp);
 return (0);
}
