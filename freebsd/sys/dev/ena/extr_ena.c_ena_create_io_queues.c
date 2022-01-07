
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef void* uint16_t ;
struct ena_ring {int ena_com_io_cq; int ena_com_io_sq; } ;
struct ena_que {int cleanup_tq; int cleanup_task; } ;
struct ena_com_dev {int tx_mem_queue_type; } ;
struct ena_com_create_io_ctx {void* qid; void* msix_vector; int queue_size; int direction; int mem_queue_type; } ;
struct ena_adapter {int num_queues; int pdev; struct ena_que* que; struct ena_ring* rx_ring; int rx_ring_size; struct ena_ring* tx_ring; int tx_ring_size; struct ena_com_dev* ena_dev; } ;


 int ENA_ADMIN_PLACEMENT_POLICY_HOST ;
 int ENA_COM_IO_QUEUE_DIRECTION_RX ;
 int ENA_COM_IO_QUEUE_DIRECTION_TX ;
 void* ENA_IO_IRQ_IDX (int) ;
 void* ENA_IO_RXQ_IDX (int) ;
 void* ENA_IO_TXQ_IDX (int) ;
 int ENXIO ;
 int M_WAITOK ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct ena_que*) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int,int) ;
 int ena_cleanup ;
 int ena_com_create_io_queue (struct ena_com_dev*,struct ena_com_create_io_ctx*) ;
 int ena_com_destroy_io_queue (struct ena_com_dev*,void*) ;
 int ena_com_get_io_handlers (struct ena_com_dev*,void*,int *,int *) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ,int) ;
 int taskqueue_thread_enqueue ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_create_io_queues(struct ena_adapter *adapter)
{
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 struct ena_com_create_io_ctx ctx;
 struct ena_ring *ring;
 struct ena_que *queue;
 uint16_t ena_qid;
 uint32_t msix_vector;
 int rc, i;


 for (i = 0; i < adapter->num_queues; i++) {
  msix_vector = ENA_IO_IRQ_IDX(i);
  ena_qid = ENA_IO_TXQ_IDX(i);
  ctx.mem_queue_type = ena_dev->tx_mem_queue_type;
  ctx.direction = ENA_COM_IO_QUEUE_DIRECTION_TX;
  ctx.queue_size = adapter->tx_ring_size;
  ctx.msix_vector = msix_vector;
  ctx.qid = ena_qid;
  rc = ena_com_create_io_queue(ena_dev, &ctx);
  if (rc != 0) {
   device_printf(adapter->pdev,
       "Failed to create io TX queue #%d rc: %d\n", i, rc);
   goto err_tx;
  }
  ring = &adapter->tx_ring[i];
  rc = ena_com_get_io_handlers(ena_dev, ena_qid,
      &ring->ena_com_io_sq,
      &ring->ena_com_io_cq);
  if (rc != 0) {
   device_printf(adapter->pdev,
       "Failed to get TX queue handlers. TX queue num"
       " %d rc: %d\n", i, rc);
   ena_com_destroy_io_queue(ena_dev, ena_qid);
   goto err_tx;
  }
 }


 for (i = 0; i < adapter->num_queues; i++) {
  msix_vector = ENA_IO_IRQ_IDX(i);
  ena_qid = ENA_IO_RXQ_IDX(i);
  ctx.mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
  ctx.direction = ENA_COM_IO_QUEUE_DIRECTION_RX;
  ctx.queue_size = adapter->rx_ring_size;
  ctx.msix_vector = msix_vector;
  ctx.qid = ena_qid;
  rc = ena_com_create_io_queue(ena_dev, &ctx);
  if (unlikely(rc != 0)) {
   device_printf(adapter->pdev,
       "Failed to create io RX queue[%d] rc: %d\n", i, rc);
   goto err_rx;
  }

  ring = &adapter->rx_ring[i];
  rc = ena_com_get_io_handlers(ena_dev, ena_qid,
      &ring->ena_com_io_sq,
      &ring->ena_com_io_cq);
  if (unlikely(rc != 0)) {
   device_printf(adapter->pdev,
       "Failed to get RX queue handlers. RX queue num"
       " %d rc: %d\n", i, rc);
   ena_com_destroy_io_queue(ena_dev, ena_qid);
   goto err_rx;
  }
 }

 for (i = 0; i < adapter->num_queues; i++) {
  queue = &adapter->que[i];

  TASK_INIT(&queue->cleanup_task, 0, ena_cleanup, queue);
  queue->cleanup_tq = taskqueue_create_fast("ena cleanup",
      M_WAITOK, taskqueue_thread_enqueue, &queue->cleanup_tq);

  taskqueue_start_threads(&queue->cleanup_tq, 1, PI_NET,
      "%s queue %d cleanup",
      device_get_nameunit(adapter->pdev), i);
 }

 return (0);

err_rx:
 while (i--)
  ena_com_destroy_io_queue(ena_dev, ENA_IO_RXQ_IDX(i));
 i = adapter->num_queues;
err_tx:
 while (i--)
  ena_com_destroy_io_queue(ena_dev, ENA_IO_TXQ_IDX(i));

 return (ENXIO);
}
