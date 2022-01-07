
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_flags; scalar_t__ b_qindex; int b_vp; } ;


 int BUF_ASSERT_XLOCKED (struct buf*) ;
 int B_REMFREE ;
 int CTR3 (int ,char*,struct buf*,int ,int) ;
 int KASSERT (int,char*) ;
 int KTR_BUF ;
 scalar_t__ QUEUE_NONE ;

void
bremfree(struct buf *bp)
{

 CTR3(KTR_BUF, "bremfree(%p) vp %p flags %X", bp, bp->b_vp, bp->b_flags);
 KASSERT((bp->b_flags & B_REMFREE) == 0,
     ("bremfree: buffer %p already marked for delayed removal.", bp));
 KASSERT(bp->b_qindex != QUEUE_NONE,
     ("bremfree: buffer %p not on a queue.", bp));
 BUF_ASSERT_XLOCKED(bp);

 bp->b_flags |= B_REMFREE;
}
