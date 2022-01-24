#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  me; } ;
struct ix_tx_queue {int msix; TYPE_2__ txr; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_3__ mac; } ;
struct TYPE_5__ {int /*<<< orphan*/  me; } ;
struct ix_rx_queue {int num_rx_queues; int msix; int num_tx_queues; int vector; int /*<<< orphan*/  que_irq; struct ix_rx_queue* rx_queues; int /*<<< orphan*/  irq; TYPE_4__ hw; struct ix_tx_queue* tx_queues; TYPE_1__ rxr; } ;
struct adapter {int num_rx_queues; int msix; int num_tx_queues; int vector; int /*<<< orphan*/  que_irq; struct adapter* rx_queues; int /*<<< orphan*/  irq; TYPE_4__ hw; struct ix_tx_queue* tx_queues; TYPE_1__ rxr; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IFLIB_INTR_ADMIN ; 
 int /*<<< orphan*/  IFLIB_INTR_RX ; 
 int /*<<< orphan*/  IFLIB_INTR_TX ; 
 int PCIM_MSIXCTRL_MSIX_ENABLE ; 
 scalar_t__ PCIR_MSIX_CTRL ; 
 int /*<<< orphan*/  PCIY_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ix_rx_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ix_rx_queue*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ix_tx_queue*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ixgbe_mac_82599_vf ; 
 int /*<<< orphan*/  ixv_msix_mbx ; 
 int /*<<< orphan*/  ixv_msix_que ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC10(if_ctx_t ctx, int msix)
{
	struct adapter     *adapter = FUNC2(ctx);
	device_t           dev = FUNC1(ctx);
	struct ix_rx_queue *rx_que = adapter->rx_queues;
	struct ix_tx_queue *tx_que;
	int                error, rid, vector = 0;
	char               buf[16];

	for (int i = 0; i < adapter->num_rx_queues; i++, vector++, rx_que++) {
		rid = vector + 1;

		FUNC9(buf, sizeof(buf), "rxq%d", i);
		error = FUNC3(ctx, &rx_que->que_irq, rid,
		    IFLIB_INTR_RX, ixv_msix_que, rx_que, rx_que->rxr.me, buf);

		if (error) {
			FUNC0(FUNC1(ctx),
			    "Failed to allocate que int %d err: %d", i, error);
			adapter->num_rx_queues = i + 1;
			goto fail;
		}

		rx_que->msix = vector;
	}

	for (int i = 0; i < adapter->num_tx_queues; i++) {
		FUNC9(buf, sizeof(buf), "txq%d", i);
		tx_que = &adapter->tx_queues[i];
		tx_que->msix = i % adapter->num_rx_queues;
		FUNC5(ctx,
		    &adapter->rx_queues[tx_que->msix].que_irq,
		    IFLIB_INTR_TX, tx_que, tx_que->txr.me, buf);
	}
	rid = vector + 1;
	error = FUNC3(ctx, &adapter->irq, rid,
	    IFLIB_INTR_ADMIN, ixv_msix_mbx, adapter, 0, "aq");
	if (error) {
		FUNC0(FUNC1(ctx),
		    "Failed to register admin handler");
		return (error);
	}

	adapter->vector = vector;
	/*
	 * Due to a broken design QEMU will fail to properly
	 * enable the guest for MSIX unless the vectors in
	 * the table are all set up, so we must rewrite the
	 * ENABLE in the MSIX control register again at this
	 * point to cause it to successfully initialize us.
	 */
	if (adapter->hw.mac.type == ixgbe_mac_82599_vf) {
		int msix_ctrl;
		FUNC6(dev, PCIY_MSIX, &rid);
		rid += PCIR_MSIX_CTRL;
		msix_ctrl = FUNC7(dev, rid, 2);
		msix_ctrl |= PCIM_MSIXCTRL_MSIX_ENABLE;
		FUNC8(dev, rid, msix_ctrl, 2);
	}

	return (0);

fail:
	FUNC4(ctx, &adapter->irq);
	rx_que = adapter->rx_queues;
	for (int i = 0; i < adapter->num_rx_queues; i++, rx_que++)
		FUNC4(ctx, &rx_que->que_irq);

	return (error);
}