
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjails {int dummy; } ;
struct cfjail {struct cfjails* queue; } ;


 int TAILQ_INSERT_HEAD (struct cfjails*,struct cfjail*,int ) ;
 int TAILQ_REMOVE (struct cfjails*,struct cfjail*,int ) ;
 int tq ;

void
requeue_head(struct cfjail *j, struct cfjails *queue)
{
    TAILQ_REMOVE(j->queue, j, tq);
    TAILQ_INSERT_HEAD(queue, j, tq);
    j->queue = queue;
}
