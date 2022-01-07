
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {scalar_t__ bq_len; int bq_subqueue; int bq_queue; } ;
struct bufdomain {struct bufqueue* bd_cleanq; scalar_t__ bd_wanted; } ;
struct buf {int b_subqueue; } ;


 int BD_LOCK (struct bufdomain*) ;
 int BD_UNLOCK (struct bufdomain*) ;
 int BQ_ASSERT_LOCKED (struct bufqueue*) ;
 struct buf* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct buf*,int ) ;
 int TAILQ_REMOVE (int *,struct buf*,int ) ;
 int b_freelist ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
bd_flush(struct bufdomain *bd, struct bufqueue *bq)
{
 struct buf *bp;

 BQ_ASSERT_LOCKED(bq);
 if (bq != bd->bd_cleanq) {
  BD_LOCK(bd);
  while ((bp = TAILQ_FIRST(&bq->bq_queue)) != ((void*)0)) {
   TAILQ_REMOVE(&bq->bq_queue, bp, b_freelist);
   TAILQ_INSERT_TAIL(&bd->bd_cleanq->bq_queue, bp,
       b_freelist);
   bp->b_subqueue = bd->bd_cleanq->bq_subqueue;
  }
  bd->bd_cleanq->bq_len += bq->bq_len;
  bq->bq_len = 0;
 }
 if (bd->bd_wanted) {
  bd->bd_wanted = 0;
  wakeup(&bd->bd_wanted);
 }
 if (bq != bd->bd_cleanq)
  BD_UNLOCK(bd);
}
