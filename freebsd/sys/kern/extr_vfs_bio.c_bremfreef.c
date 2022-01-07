
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {int dummy; } ;
struct buf {int dummy; } ;


 int BQ_UNLOCK (struct bufqueue*) ;
 int bq_remove (struct bufqueue*,struct buf*) ;
 struct bufqueue* bufqueue_acquire (struct buf*) ;

void
bremfreef(struct buf *bp)
{
 struct bufqueue *bq;

 bq = bufqueue_acquire(bp);
 bq_remove(bq, bp);
 BQ_UNLOCK(bq);
}
