
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_queue_head {int queue; } ;
struct bio {int dummy; } ;


 struct bio* TAILQ_FIRST (int *) ;

struct bio *
bioq_first(struct bio_queue_head *head)
{

 return (TAILQ_FIRST(&head->queue));
}
