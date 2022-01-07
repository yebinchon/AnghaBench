
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {int bq_len; int bq_queue; } ;
struct buf {int b_flags; int b_qindex; int b_vp; } ;


 int BQ_ASSERT_LOCKED (struct bufqueue*) ;
 int BUF_ASSERT_XLOCKED (struct buf*) ;
 int B_REMFREE ;
 int B_REUSE ;
 int CTR3 (int ,char*,struct buf*,int ,int) ;
 int KASSERT (int,char*) ;
 int KTR_BUF ;
 int QUEUE_EMPTY ;
 int QUEUE_NONE ;
 int TAILQ_REMOVE (int *,struct buf*,int ) ;
 int b_freelist ;
 struct bufqueue* bufqueue (struct buf*) ;

__attribute__((used)) static void
bq_remove(struct bufqueue *bq, struct buf *bp)
{

 CTR3(KTR_BUF, "bq_remove(%p) vp %p flags %X",
     bp, bp->b_vp, bp->b_flags);
 KASSERT(bp->b_qindex != QUEUE_NONE,
     ("bq_remove: buffer %p not on a queue.", bp));
 KASSERT(bufqueue(bp) == bq,
     ("bq_remove: Remove buffer %p from wrong queue.", bp));

 BQ_ASSERT_LOCKED(bq);
 if (bp->b_qindex != QUEUE_EMPTY) {
  BUF_ASSERT_XLOCKED(bp);
 }
 KASSERT(bq->bq_len >= 1,
     ("queue %d underflow", bp->b_qindex));
 TAILQ_REMOVE(&bq->bq_queue, bp, b_freelist);
 bq->bq_len--;
 bp->b_qindex = QUEUE_NONE;
 bp->b_flags &= ~(B_REMFREE | B_REUSE);
}
