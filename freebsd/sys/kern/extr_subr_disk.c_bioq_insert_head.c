
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_queue_head {scalar_t__ batched; int total; int queue; int last_offset; int * insert_point; } ;
struct bio {int bio_offset; } ;


 int TAILQ_INSERT_HEAD (int *,struct bio*,int ) ;
 int bio_queue ;

void
bioq_insert_head(struct bio_queue_head *head, struct bio *bp)
{

 if (head->insert_point == ((void*)0))
  head->last_offset = bp->bio_offset;
 TAILQ_INSERT_HEAD(&head->queue, bp, bio_queue);
 head->total++;
 head->batched = 0;
}
