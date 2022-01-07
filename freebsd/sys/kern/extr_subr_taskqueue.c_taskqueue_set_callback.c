
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * taskqueue_callback_fn ;
struct taskqueue {void** tq_cb_contexts; int ** tq_callbacks; } ;
typedef enum taskqueue_callback_type { ____Placeholder_taskqueue_callback_type } taskqueue_callback_type ;


 int KASSERT (int,char*) ;
 int TASKQUEUE_CALLBACK_TYPE_MAX ;
 int TASKQUEUE_CALLBACK_TYPE_MIN ;

void
taskqueue_set_callback(struct taskqueue *queue,
    enum taskqueue_callback_type cb_type, taskqueue_callback_fn callback,
    void *context)
{

 KASSERT(((cb_type >= TASKQUEUE_CALLBACK_TYPE_MIN) &&
     (cb_type <= TASKQUEUE_CALLBACK_TYPE_MAX)),
     ("Callback type %d not valid, must be %d-%d", cb_type,
     TASKQUEUE_CALLBACK_TYPE_MIN, TASKQUEUE_CALLBACK_TYPE_MAX));
 KASSERT((queue->tq_callbacks[cb_type] == ((void*)0)),
     ("Re-initialization of taskqueue callback?"));

 queue->tq_callbacks[cb_type] = callback;
 queue->tq_cb_contexts[cb_type] = context;
}
