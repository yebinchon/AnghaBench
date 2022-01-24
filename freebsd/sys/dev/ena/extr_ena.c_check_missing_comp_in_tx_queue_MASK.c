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
typedef  scalar_t__ uint32_t ;
struct ena_tx_buffer {int print_once; int /*<<< orphan*/  timestamp; } ;
struct TYPE_2__ {int /*<<< orphan*/  missing_tx_comp; } ;
struct ena_ring {int ring_size; TYPE_1__ tx_stats; int /*<<< orphan*/  qid; int /*<<< orphan*/  first_interrupt; struct ena_tx_buffer* tx_buffer_info; } ;
struct ena_adapter {int missing_tx_timeout; int /*<<< orphan*/  reset_reason; scalar_t__ missing_tx_threshold; int /*<<< orphan*/  pdev; } ;
struct bintime {int dummy; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  ENA_REGS_RESET_MISS_INTERRUPT ; 
 int /*<<< orphan*/  ENA_REGS_RESET_MISS_TX_CMPL ; 
 int /*<<< orphan*/  ENA_WARNING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bintime*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct bintime) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bintime*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct ena_adapter *adapter,
    struct ena_ring *tx_ring)
{
	struct bintime curtime, time;
	struct ena_tx_buffer *tx_buf;
	sbintime_t time_offset;
	uint32_t missed_tx = 0;
	int i, rc = 0;

	FUNC8(&curtime);

	for (i = 0; i < tx_ring->ring_size; i++) {
		tx_buf = &tx_ring->tx_buffer_info[i];

		if (FUNC2(&tx_buf->timestamp) == 0)
			continue;

		time = curtime;
		FUNC3(&time, &tx_buf->timestamp);
		time_offset = FUNC4(time);

		if (FUNC10(!tx_ring->first_interrupt &&
		    time_offset > 2 * adapter->missing_tx_timeout)) {
			/*
			 * If after graceful period interrupt is still not
			 * received, we schedule a reset.
			 */
			FUNC6(adapter->pdev,
			    "Potential MSIX issue on Tx side Queue = %d. "
			    "Reset the device\n", tx_ring->qid);
			if (FUNC9(!FUNC0(ENA_FLAG_TRIGGER_RESET,
			    adapter))) {
				adapter->reset_reason =
				    ENA_REGS_RESET_MISS_INTERRUPT;
				FUNC1(ENA_FLAG_TRIGGER_RESET,
				    adapter);
			}
			return (EIO);
		}

		/* Check again if packet is still waiting */
		if (FUNC10(time_offset > adapter->missing_tx_timeout)) {

			if (!tx_buf->print_once)
				FUNC7(ENA_WARNING, "Found a Tx that wasn't "
				    "completed on time, qid %d, index %d.\n",
				    tx_ring->qid, i);

			tx_buf->print_once = true;
			missed_tx++;
		}
	}

	if (FUNC10(missed_tx > adapter->missing_tx_threshold)) {
		FUNC6(adapter->pdev,
		    "The number of lost tx completion is above the threshold "
		    "(%d > %d). Reset the device\n",
		    missed_tx, adapter->missing_tx_threshold);
		if (FUNC9(!FUNC0(ENA_FLAG_TRIGGER_RESET, adapter))) {
			adapter->reset_reason = ENA_REGS_RESET_MISS_TX_CMPL;
			FUNC1(ENA_FLAG_TRIGGER_RESET, adapter);
		}
		rc = EIO;
	}

	FUNC5(tx_ring->tx_stats.missing_tx_comp, missed_tx);

	return (rc);
}