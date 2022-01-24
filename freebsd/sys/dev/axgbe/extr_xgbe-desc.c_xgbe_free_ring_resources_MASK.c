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
struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel* channel; } ;
struct xgbe_channel {int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xgbe_prv_data *pdata)
{
	struct xgbe_channel *channel;
	unsigned int i;

	FUNC0("-->xgbe_free_ring_resources\n");

	channel = pdata->channel;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		FUNC1(pdata, channel->tx_ring);
		FUNC1(pdata, channel->rx_ring);
	}

	FUNC0("<--xgbe_free_ring_resources\n");
}