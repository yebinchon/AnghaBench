
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_que {int cleanup_tq; int cleanup_task; } ;
struct ena_adapter {int num_queues; struct ena_que* que; } ;


 int ena_destroy_all_rx_queues (struct ena_adapter*) ;
 int ena_destroy_all_tx_queues (struct ena_adapter*) ;
 scalar_t__ taskqueue_cancel (int ,int *,int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static void
ena_destroy_all_io_queues(struct ena_adapter *adapter)
{
 struct ena_que *queue;
 int i;

 for (i = 0; i < adapter->num_queues; i++) {
  queue = &adapter->que[i];
  while (taskqueue_cancel(queue->cleanup_tq,
      &queue->cleanup_task, ((void*)0)))
   taskqueue_drain(queue->cleanup_tq,
       &queue->cleanup_task);
  taskqueue_free(queue->cleanup_tq);
 }

 ena_destroy_all_tx_queues(adapter);
 ena_destroy_all_rx_queues(adapter);
}
