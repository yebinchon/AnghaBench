
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uoff_t ;
struct bio_queue_head {scalar_t__ batched; int total; int queue; struct bio* insert_point; } ;
struct bio {int bio_flags; scalar_t__ bio_cmd; } ;


 scalar_t__ BIO_DELETE ;
 int BIO_ORDERED ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 struct bio* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,struct bio*,struct bio*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct bio*,int ) ;
 struct bio* TAILQ_NEXT (struct bio*,int ) ;
 int bio_queue ;
 scalar_t__ bioq_batchsize ;
 scalar_t__ bioq_bio_key (struct bio_queue_head*,struct bio*) ;
 int bioq_insert_tail (struct bio_queue_head*,struct bio*) ;

void
bioq_disksort(struct bio_queue_head *head, struct bio *bp)
{
 struct bio *cur, *prev;
 uoff_t key;

 if ((bp->bio_flags & BIO_ORDERED) != 0) {






  bioq_insert_tail(head, bp);
  return;
 }






 if (bp->bio_cmd != BIO_READ && bp->bio_cmd != BIO_WRITE &&
     bp->bio_cmd != BIO_DELETE) {
  bioq_insert_tail(head, bp);
  return;
 }

 if (bioq_batchsize > 0 && head->batched > bioq_batchsize) {
  bioq_insert_tail(head, bp);
  return;
 }

 prev = ((void*)0);
 key = bioq_bio_key(head, bp);
 cur = TAILQ_FIRST(&head->queue);

 if (head->insert_point) {
  prev = head->insert_point;
  cur = TAILQ_NEXT(head->insert_point, bio_queue);
 }

 while (cur != ((void*)0) && key >= bioq_bio_key(head, cur)) {
  prev = cur;
  cur = TAILQ_NEXT(cur, bio_queue);
 }

 if (prev == ((void*)0))
  TAILQ_INSERT_HEAD(&head->queue, bp, bio_queue);
 else
  TAILQ_INSERT_AFTER(&head->queue, prev, bp, bio_queue);
 head->total++;
 head->batched++;
}
