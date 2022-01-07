
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_flags; scalar_t__ b_qindex; int * b_bufobj; int b_vp; } ;


 int B_DEFERRED ;
 int B_DELWRI ;
 int B_REMFREE ;
 int CTR3 (int ,char*,struct buf*,int ,int) ;
 int KASSERT (int,char*) ;
 int KTR_BUF ;
 scalar_t__ QUEUE_NONE ;
 int bdirtysub (struct buf*) ;
 int reassignbuf (struct buf*) ;

void
bundirty(struct buf *bp)
{

 CTR3(KTR_BUF, "bundirty(%p) vp %p flags %X", bp, bp->b_vp, bp->b_flags);
 KASSERT(bp->b_bufobj != ((void*)0), ("No b_bufobj %p", bp));
 KASSERT(bp->b_flags & B_REMFREE || bp->b_qindex == QUEUE_NONE,
     ("bundirty: buffer %p still on queue %d", bp, bp->b_qindex));

 if (bp->b_flags & B_DELWRI) {
  bp->b_flags &= ~B_DELWRI;
  reassignbuf(bp);
  bdirtysub(bp);
 }



 bp->b_flags &= ~B_DEFERRED;
}
