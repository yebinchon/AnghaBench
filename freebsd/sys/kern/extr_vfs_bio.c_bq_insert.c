
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {scalar_t__ bq_index; scalar_t__ bq_len; int bq_subqueue; int bq_queue; } ;
struct bufdomain {scalar_t__ bd_lim; struct bufqueue* bd_cleanq; scalar_t__ bd_wanted; } ;
struct buf {scalar_t__ b_qindex; int b_flags; int b_subqueue; } ;


 int BQ_LOCK (struct bufqueue*) ;
 int BQ_UNLOCK (struct bufqueue*) ;
 int BUF_UNLOCK (struct buf*) ;
 int B_AGE ;
 int B_REUSE ;
 scalar_t__ QUEUE_CLEAN ;
 scalar_t__ QUEUE_NONE ;
 int TAILQ_INSERT_HEAD (int *,struct buf*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct buf*,int ) ;
 int b_freelist ;
 int bd_flush (struct bufdomain*,struct bufqueue*) ;
 struct bufdomain* bufdomain (struct buf*) ;
 int panic (char*,struct buf*) ;

__attribute__((used)) static void
bq_insert(struct bufqueue *bq, struct buf *bp, bool unlock)
{
 struct bufdomain *bd;

 if (bp->b_qindex != QUEUE_NONE)
  panic("bq_insert: free buffer %p onto another queue?", bp);

 bd = bufdomain(bp);
 if (bp->b_flags & B_AGE) {

  if (bq->bq_index == QUEUE_CLEAN)
   bq = bd->bd_cleanq;
  BQ_LOCK(bq);
  TAILQ_INSERT_HEAD(&bq->bq_queue, bp, b_freelist);
 } else {
  BQ_LOCK(bq);
  TAILQ_INSERT_TAIL(&bq->bq_queue, bp, b_freelist);
 }
 bp->b_flags &= ~(B_AGE | B_REUSE);
 bq->bq_len++;
 bp->b_qindex = bq->bq_index;
 bp->b_subqueue = bq->bq_subqueue;





 if (unlock)
  BUF_UNLOCK(bp);

 if (bp->b_qindex == QUEUE_CLEAN) {



  if (bd->bd_wanted || (bq != bd->bd_cleanq &&
      bq->bq_len >= bd->bd_lim))
   bd_flush(bd, bq);
 }
 BQ_UNLOCK(bq);
}
