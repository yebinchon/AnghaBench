
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {int dummy; } ;
struct buf {int dummy; } ;


 int BQ_LOCK (struct bufqueue*) ;
 int BQ_UNLOCK (struct bufqueue*) ;
 struct bufqueue* bufqueue (struct buf*) ;

__attribute__((used)) static struct bufqueue *
bufqueue_acquire(struct buf *bp)
{
 struct bufqueue *bq, *nbq;






 bq = bufqueue(bp);
 BQ_LOCK(bq);
 for (;;) {
  nbq = bufqueue(bp);
  if (bq == nbq)
   break;
  BQ_UNLOCK(bq);
  BQ_LOCK(nbq);
  bq = nbq;
 }
 return (bq);
}
