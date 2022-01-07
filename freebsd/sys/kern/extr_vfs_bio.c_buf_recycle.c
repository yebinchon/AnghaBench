
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {int bq_queue; } ;
struct bufdomain {int bd_wanted; struct bufqueue* bd_cleanq; } ;
struct buf {scalar_t__ b_kvasize; int b_flags; int b_vflags; scalar_t__ b_qindex; scalar_t__ b_domain; } ;


 scalar_t__ BD_DOMAIN (struct bufdomain*) ;
 scalar_t__ BD_LOCKPTR (struct bufdomain*) ;
 int BQ_LOCK (struct bufqueue*) ;
 scalar_t__ BQ_LOCKPTR (struct bufqueue*) ;
 int BQ_UNLOCK (struct bufqueue*) ;
 scalar_t__ BUF_LOCK (struct buf*,int,int *) ;
 int BUF_UNLOCK (struct buf*) ;
 int BV_BKGRDERR ;
 int BV_BKGRDINPROG ;
 int B_INVAL ;
 int B_REUSE ;
 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 scalar_t__ QUEUE_CLEAN ;
 struct buf* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct buf*,int ) ;
 struct buf* TAILQ_NEXT (struct buf*,int ) ;
 int TAILQ_REMOVE (int *,struct buf*,int ) ;
 int b_freelist ;
 int bq_remove (struct bufqueue*,struct buf*) ;
 int bqrelse (struct buf*) ;
 int brelse (struct buf*) ;
 int bufdefragcnt ;
 int counter_u64_add (int ,int) ;

__attribute__((used)) static int
buf_recycle(struct bufdomain *bd, bool kva)
{
 struct bufqueue *bq;
 struct buf *bp, *nbp;

 if (kva)
  counter_u64_add(bufdefragcnt, 1);
 nbp = ((void*)0);
 bq = bd->bd_cleanq;
 BQ_LOCK(bq);
 KASSERT(BQ_LOCKPTR(bq) == BD_LOCKPTR(bd),
     ("buf_recycle: Locks don't match"));
 nbp = TAILQ_FIRST(&bq->bq_queue);





 while ((bp = nbp) != ((void*)0)) {




  nbp = TAILQ_NEXT(bp, b_freelist);





  if (kva && bp->b_kvasize == 0)
   continue;

  if (BUF_LOCK(bp, LK_EXCLUSIVE | LK_NOWAIT, ((void*)0)) != 0)
   continue;





  if ((bp->b_flags & B_REUSE) != 0) {
   TAILQ_REMOVE(&bq->bq_queue, bp, b_freelist);
   TAILQ_INSERT_TAIL(&bq->bq_queue, bp, b_freelist);
   bp->b_flags &= ~B_REUSE;
   BUF_UNLOCK(bp);
   continue;
  }




  if ((bp->b_vflags & BV_BKGRDINPROG) != 0) {
   BUF_UNLOCK(bp);
   continue;
  }

  KASSERT(bp->b_qindex == QUEUE_CLEAN,
      ("buf_recycle: inconsistent queue %d bp %p",
      bp->b_qindex, bp));
  KASSERT(bp->b_domain == BD_DOMAIN(bd),
      ("getnewbuf: queue domain %d doesn't match request %d",
      bp->b_domain, (int)BD_DOMAIN(bd)));




  bq_remove(bq, bp);
  BQ_UNLOCK(bq);





  if ((bp->b_vflags & BV_BKGRDERR) != 0) {
   bqrelse(bp);
   BQ_LOCK(bq);
   nbp = TAILQ_FIRST(&bq->bq_queue);
   continue;
  }
  bp->b_flags |= B_INVAL;
  brelse(bp);
  return (0);
 }
 bd->bd_wanted = 1;
 BQ_UNLOCK(bq);

 return (ENOBUFS);
}
