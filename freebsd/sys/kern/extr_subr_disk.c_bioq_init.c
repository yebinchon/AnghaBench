
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_queue_head {scalar_t__ batched; scalar_t__ total; int * insert_point; scalar_t__ last_offset; int queue; } ;


 int TAILQ_INIT (int *) ;

void
bioq_init(struct bio_queue_head *head)
{

 TAILQ_INIT(&head->queue);
 head->last_offset = 0;
 head->insert_point = ((void*)0);
 head->total = 0;
 head->batched = 0;
}
