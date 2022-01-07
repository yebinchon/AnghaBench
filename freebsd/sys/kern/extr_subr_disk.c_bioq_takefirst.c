
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_queue_head {int queue; } ;
struct bio {int dummy; } ;


 struct bio* TAILQ_FIRST (int *) ;
 int bioq_remove (struct bio_queue_head*,struct bio*) ;

struct bio *
bioq_takefirst(struct bio_queue_head *head)
{
 struct bio *bp;

 bp = TAILQ_FIRST(&head->queue);
 if (bp != ((void*)0))
  bioq_remove(head, bp);
 return (bp);
}
