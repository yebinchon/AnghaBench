
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjails {int dummy; } ;
struct cfjail {struct cfjails* queue; } ;


 int TAILQ_INSERT_TAIL (struct cfjails*,struct cfjail*,int ) ;
 int TAILQ_REMOVE (struct cfjails*,struct cfjail*,int ) ;
 int tq ;

void
requeue(struct cfjail *j, struct cfjails *queue)
{
 if (j->queue != queue) {
  TAILQ_REMOVE(j->queue, j, tq);
  TAILQ_INSERT_TAIL(queue, j, tq);
  j->queue = queue;
 }
}
