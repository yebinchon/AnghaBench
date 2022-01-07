
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {scalar_t__ tq_callouts; struct gtaskqueue* tq_name; struct gtaskqueue* tq_threads; int tq_mutex; int tq_active; int tq_flags; } ;


 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int M_GTASKQUEUE ;
 int TQ_FLAGS_ACTIVE ;
 int TQ_LOCK (struct gtaskqueue*) ;
 int free (struct gtaskqueue*,int ) ;
 int gtaskqueue_terminate (struct gtaskqueue*,struct gtaskqueue*) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
gtaskqueue_free(struct gtaskqueue *queue)
{

 TQ_LOCK(queue);
 queue->tq_flags &= ~TQ_FLAGS_ACTIVE;
 gtaskqueue_terminate(queue->tq_threads, queue);
 KASSERT(LIST_EMPTY(&queue->tq_active), ("Tasks still running?"));
 KASSERT(queue->tq_callouts == 0, ("Armed timeout tasks"));
 mtx_destroy(&queue->tq_mutex);
 free(queue->tq_threads, M_GTASKQUEUE);
 free(queue->tq_name, M_GTASKQUEUE);
 free(queue, M_GTASKQUEUE);
}
