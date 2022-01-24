#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* uint32_t ;
typedef  void* uint16_t ;
struct ena_ring {int /*<<< orphan*/  ena_com_io_cq; int /*<<< orphan*/  ena_com_io_sq; } ;
struct ena_que {int /*<<< orphan*/  cleanup_tq; int /*<<< orphan*/  cleanup_task; } ;
struct ena_com_dev {int /*<<< orphan*/  tx_mem_queue_type; } ;
struct ena_com_create_io_ctx {void* qid; void* msix_vector; int /*<<< orphan*/  queue_size; int /*<<< orphan*/  direction; int /*<<< orphan*/  mem_queue_type; } ;
struct ena_adapter {int num_queues; int /*<<< orphan*/  pdev; struct ena_que* que; struct ena_ring* rx_ring; int /*<<< orphan*/  rx_ring_size; struct ena_ring* tx_ring; int /*<<< orphan*/  tx_ring_size; struct ena_com_dev* ena_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ADMIN_PLACEMENT_POLICY_HOST ; 
 int /*<<< orphan*/  ENA_COM_IO_QUEUE_DIRECTION_RX ; 
 int /*<<< orphan*/  ENA_COM_IO_QUEUE_DIRECTION_TX ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ena_que*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  ena_cleanup ; 
 int FUNC6 (struct ena_com_dev*,struct ena_com_create_io_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_com_dev*,void*) ; 
 int FUNC8 (struct ena_com_dev*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct ena_adapter *adapter)
{
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	struct ena_com_create_io_ctx ctx;
	struct ena_ring *ring;
	struct ena_que *queue;
	uint16_t ena_qid;
	uint32_t msix_vector;
	int rc, i;

	/* Create TX queues */
	for (i = 0; i < adapter->num_queues; i++) {
		msix_vector = FUNC0(i);
		ena_qid = FUNC2(i);
		ctx.mem_queue_type = ena_dev->tx_mem_queue_type;
		ctx.direction = ENA_COM_IO_QUEUE_DIRECTION_TX;
		ctx.queue_size = adapter->tx_ring_size;
		ctx.msix_vector = msix_vector;
		ctx.qid = ena_qid;
		rc = FUNC6(ena_dev, &ctx);
		if (rc != 0) {
			FUNC5(adapter->pdev,
			    "Failed to create io TX queue #%d rc: %d\n", i, rc);
			goto err_tx;
		}
		ring = &adapter->tx_ring[i];
		rc = FUNC8(ena_dev, ena_qid,
		    &ring->ena_com_io_sq,
		    &ring->ena_com_io_cq);
		if (rc != 0) {
			FUNC5(adapter->pdev,
			    "Failed to get TX queue handlers. TX queue num"
			    " %d rc: %d\n", i, rc);
			FUNC7(ena_dev, ena_qid);
			goto err_tx;
		}
	}

	/* Create RX queues */
	for (i = 0; i < adapter->num_queues; i++) {
		msix_vector = FUNC0(i);
		ena_qid = FUNC1(i);
		ctx.mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
		ctx.direction = ENA_COM_IO_QUEUE_DIRECTION_RX;
		ctx.queue_size = adapter->rx_ring_size;
		ctx.msix_vector = msix_vector;
		ctx.qid = ena_qid;
		rc = FUNC6(ena_dev, &ctx);
		if (FUNC11(rc != 0)) {
			FUNC5(adapter->pdev,
			    "Failed to create io RX queue[%d] rc: %d\n", i, rc);
			goto err_rx;
		}

		ring = &adapter->rx_ring[i];
		rc = FUNC8(ena_dev, ena_qid,
		    &ring->ena_com_io_sq,
		    &ring->ena_com_io_cq);
		if (FUNC11(rc != 0)) {
			FUNC5(adapter->pdev,
			    "Failed to get RX queue handlers. RX queue num"
			    " %d rc: %d\n", i, rc);
			FUNC7(ena_dev, ena_qid);
			goto err_rx;
		}
	}

	for (i = 0; i < adapter->num_queues; i++) {
		queue = &adapter->que[i];

		FUNC3(&queue->cleanup_task, 0, ena_cleanup, queue);
		queue->cleanup_tq = FUNC9("ena cleanup",
		    M_WAITOK, taskqueue_thread_enqueue, &queue->cleanup_tq);

		FUNC10(&queue->cleanup_tq, 1, PI_NET,
		    "%s queue %d cleanup",
		    FUNC4(adapter->pdev), i);
	}

	return (0);

err_rx:
	while (i--)
		FUNC7(ena_dev, FUNC1(i));
	i = adapter->num_queues;
err_tx:
	while (i--)
		FUNC7(ena_dev, FUNC2(i));

	return (ENXIO);
}