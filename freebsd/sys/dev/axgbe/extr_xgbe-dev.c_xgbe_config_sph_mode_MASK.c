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
struct xgbe_channel {int /*<<< orphan*/  rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_CR ; 
 int /*<<< orphan*/  HDSMS ; 
 int /*<<< orphan*/  MAC_RCR ; 
 int /*<<< orphan*/  SPH ; 
 int /*<<< orphan*/  XGBE_SPH_HDSMS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xgbe_prv_data *pdata)
{
	struct xgbe_channel *channel;
	unsigned int i;

	channel = pdata->channel;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->rx_ring)
			break;

		FUNC0(channel, DMA_CH_CR, SPH, 1);
	}

	FUNC1(pdata, MAC_RCR, HDSMS, XGBE_SPH_HDSMS_SIZE);
}