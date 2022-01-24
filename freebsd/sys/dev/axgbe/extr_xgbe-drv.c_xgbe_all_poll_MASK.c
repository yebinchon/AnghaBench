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
struct xgbe_prv_data {int rx_ring_count; unsigned int channel_count; struct xgbe_channel* channel; } ;
struct xgbe_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct xgbe_channel*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_channel*) ; 

__attribute__((used)) static int FUNC3(struct xgbe_prv_data *pdata, int budget)
{
	struct xgbe_channel *channel;
	int ring_budget;
	int processed, last_processed;
	unsigned int i;

	FUNC0("-->xgbe_all_poll: budget=%d\n", budget);

	processed = 0;
	ring_budget = budget / pdata->rx_ring_count;
	do {
		last_processed = processed;

		channel = pdata->channel;
		for (i = 0; i < pdata->channel_count; i++, channel++) {
			/* Cleanup Tx ring first */
			FUNC2(channel);

			/* Process Rx ring next */
			if (ring_budget > (budget - processed))
				ring_budget = budget - processed;
			processed += FUNC1(channel, ring_budget);
		}
	} while ((processed < budget) && (processed != last_processed));

	FUNC0("<--xgbe_all_poll: received = %d\n", processed);

	return processed;
}