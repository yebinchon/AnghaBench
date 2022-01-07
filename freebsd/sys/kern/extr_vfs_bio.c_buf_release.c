
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {int bq_index; int bq_len; int bq_queue; } ;
struct buf {int b_flags; int b_qindex; } ;


 int BQ_LOCK (struct bufqueue*) ;
 int BQ_UNLOCK (struct bufqueue*) ;
 int B_AGE ;
 int B_REUSE ;
 int TAILQ_INSERT_TAIL (int *,struct buf*,int ) ;
 int b_freelist ;
 struct bufqueue bqempty ;

__attribute__((used)) static void
buf_release(void *arg, void **store, int cnt)
{
 struct bufqueue *bq;
 struct buf *bp;
        int i;

 bq = &bqempty;
 BQ_LOCK(bq);
        for (i = 0; i < cnt; i++) {
  bp = store[i];

  TAILQ_INSERT_TAIL(&bq->bq_queue, bp, b_freelist);
  bp->b_flags &= ~(B_AGE | B_REUSE);
  bq->bq_len++;
  bp->b_qindex = bq->bq_index;
 }
 BQ_UNLOCK(bq);
}
