
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_queue_head {int last_offset; struct bio* insert_point; scalar_t__ batched; int total; int queue; } ;
struct bio {int bio_offset; } ;


 int TAILQ_INSERT_TAIL (int *,struct bio*,int ) ;
 int bio_queue ;

void
bioq_insert_tail(struct bio_queue_head *head, struct bio *bp)
{

 TAILQ_INSERT_TAIL(&head->queue, bp, bio_queue);
 head->total++;
 head->batched = 0;
 head->insert_point = bp;
 head->last_offset = bp->bio_offset;
}
