
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_queue_head {int total; int queue; struct bio* insert_point; scalar_t__ last_offset; } ;
struct bio {scalar_t__ bio_length; scalar_t__ bio_offset; } ;


 struct bio* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct bio*,int ) ;
 int bio_queue ;

void
bioq_remove(struct bio_queue_head *head, struct bio *bp)
{

 if (head->insert_point == ((void*)0)) {
  if (bp == TAILQ_FIRST(&head->queue))
   head->last_offset = bp->bio_offset + bp->bio_length;
 } else if (bp == head->insert_point)
  head->insert_point = ((void*)0);

 TAILQ_REMOVE(&head->queue, bp, bio_queue);
 head->total--;
}
