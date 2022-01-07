
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {scalar_t__ tq_callouts; struct taskqueue* tq_name; struct taskqueue* tq_threads; int tq_mutex; int tq_active; int tq_flags; } ;


 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int M_TASKQUEUE ;
 int TQ_FLAGS_ACTIVE ;
 int TQ_LOCK (struct taskqueue*) ;
 int free (struct taskqueue*,int ) ;
 int mtx_destroy (int *) ;
 int taskqueue_terminate (struct taskqueue*,struct taskqueue*) ;

void
taskqueue_free(struct taskqueue *queue)
{

 TQ_LOCK(queue);
 queue->tq_flags &= ~TQ_FLAGS_ACTIVE;
 taskqueue_terminate(queue->tq_threads, queue);
 KASSERT(LIST_EMPTY(&queue->tq_active), ("Tasks still running?"));
 KASSERT(queue->tq_callouts == 0, ("Armed timeout tasks"));
 mtx_destroy(&queue->tq_mutex);
 free(queue->tq_threads, M_TASKQUEUE);
 free(queue->tq_name, M_TASKQUEUE);
 free(queue, M_TASKQUEUE);
}
