
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bioq {int bio_queue_length; int bio_queue; } ;
struct bio {int bio_flags; } ;


 int BIO_ONQUEUE ;
 int KASSERT (int,char*) ;
 struct bio* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct bio*,int ) ;
 int bio_queue ;

__attribute__((used)) static struct bio *
g_bioq_first(struct g_bioq *bq)
{
 struct bio *bp;

 bp = TAILQ_FIRST(&bq->bio_queue);
 if (bp != ((void*)0)) {
  KASSERT((bp->bio_flags & BIO_ONQUEUE),
      ("Bio not on queue bp=%p target %p", bp, bq));
  bp->bio_flags &= ~BIO_ONQUEUE;
  TAILQ_REMOVE(&bq->bio_queue, bp, bio_queue);
  bq->bio_queue_length--;
 }
 return (bp);
}
