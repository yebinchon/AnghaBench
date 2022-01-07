
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_bufobj; } ;
struct swdevt {struct vnode* sw_id; scalar_t__ sw_first; } ;
struct buf {scalar_t__ b_iocmd; scalar_t__ b_blkno; int b_iooffset; struct vnode* b_vp; int * b_bufobj; } ;


 scalar_t__ BIO_WRITE ;
 int bstrategy (struct buf*) ;
 int bufobj_wdrop (int *) ;
 int bufobj_wref (int *) ;
 scalar_t__ ctodb (scalar_t__) ;
 int dbtob (scalar_t__) ;
 int vhold (struct vnode*) ;

__attribute__((used)) static void
swapdev_strategy(struct buf *bp, struct swdevt *sp)
{
 struct vnode *vp2;

 bp->b_blkno = ctodb(bp->b_blkno - sp->sw_first);

 vp2 = sp->sw_id;
 vhold(vp2);
 if (bp->b_iocmd == BIO_WRITE) {
  if (bp->b_bufobj)
   bufobj_wdrop(bp->b_bufobj);
  bufobj_wref(&vp2->v_bufobj);
 }
 if (bp->b_bufobj != &vp2->v_bufobj)
  bp->b_bufobj = &vp2->v_bufobj;
 bp->b_vp = vp2;
 bp->b_iooffset = dbtob(bp->b_blkno);
 bstrategy(bp);
 return;
}
