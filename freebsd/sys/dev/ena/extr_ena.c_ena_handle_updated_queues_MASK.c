#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ena_com_dev_get_features_ctx {int dummy; } ;
struct ena_com_dev {int dummy; } ;
struct ena_calc_queue_size_ctx {scalar_t__ tx_queue_size; scalar_t__ rx_queue_size; int /*<<< orphan*/  max_rx_sgl_size; int /*<<< orphan*/  max_tx_sgl_size; int /*<<< orphan*/  pdev; struct ena_com_dev_get_features_ctx* get_feat_ctx; struct ena_com_dev* ena_dev; int /*<<< orphan*/  member_0; } ;
struct ena_adapter {scalar_t__ buf_ring_size; scalar_t__ tx_ring_size; scalar_t__ rx_ring_size; int num_queues; int /*<<< orphan*/  max_rx_sgl_size; int /*<<< orphan*/  max_tx_sgl_size; TYPE_1__* tx_ring; int /*<<< orphan*/  pdev; struct ena_com_dev* ena_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ buf_ring_size; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_RSS_ACTIVE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ; 
 int FUNC3 (struct ena_adapter*,struct ena_calc_queue_size_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_adapter*) ; 
 int FUNC7 (struct ena_adapter*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct ena_adapter *adapter,
    struct ena_com_dev_get_features_ctx *get_feat_ctx)
{
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	struct ena_calc_queue_size_ctx calc_queue_ctx = { 0 };
	device_t pdev = adapter->pdev;
	bool are_queues_changed = false;
	int io_queue_num, rc;

	calc_queue_ctx.ena_dev = ena_dev;
	calc_queue_ctx.get_feat_ctx = get_feat_ctx;
	calc_queue_ctx.pdev = pdev;

	io_queue_num = FUNC2(adapter, get_feat_ctx);
	rc = FUNC3(adapter, &calc_queue_ctx);
	if (FUNC8(rc != 0 || io_queue_num <= 0))
		return EFAULT;

	if (adapter->tx_ring->buf_ring_size != adapter->buf_ring_size)
		are_queues_changed = true;

	if (FUNC8(adapter->tx_ring_size > calc_queue_ctx.tx_queue_size ||
	    adapter->rx_ring_size > calc_queue_ctx.rx_queue_size)) {
		FUNC1(pdev,
		    "Not enough resources to allocate requested queue sizes "
		    "(TX,RX)=(%d,%d), falling back to queue sizes "
		    "(TX,RX)=(%d,%d)\n",
		    adapter->tx_ring_size,
		    adapter->rx_ring_size,
		    calc_queue_ctx.tx_queue_size,
		    calc_queue_ctx.rx_queue_size);
		adapter->tx_ring_size = calc_queue_ctx.tx_queue_size;
		adapter->rx_ring_size = calc_queue_ctx.rx_queue_size;
		adapter->max_tx_sgl_size = calc_queue_ctx.max_tx_sgl_size;
		adapter->max_rx_sgl_size = calc_queue_ctx.max_rx_sgl_size;
		are_queues_changed = true;
	}

	if (FUNC8(adapter->num_queues > io_queue_num)) {
		FUNC1(pdev,
		    "Not enough resources to allocate %d queues, "
		    "falling back to %d queues\n",
		    adapter->num_queues, io_queue_num);
		adapter->num_queues = io_queue_num;
		if (FUNC0(ENA_FLAG_RSS_ACTIVE, adapter)) {
			FUNC4(ena_dev);
			rc = FUNC7(adapter);
			if (FUNC8(rc != 0) && (rc != EOPNOTSUPP)) {
				FUNC1(pdev, "Cannot init RSS rc: %d\n",
				    rc);
				return (rc);
			}
		}
		are_queues_changed = true;
	}

	if (FUNC8(are_queues_changed)) {
		FUNC5(adapter);
		FUNC6(adapter);
	}

	return (0);
}