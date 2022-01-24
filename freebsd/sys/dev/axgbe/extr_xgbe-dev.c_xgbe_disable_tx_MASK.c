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
struct xgbe_prv_data {unsigned int channel_count; unsigned int tx_q_count; struct xgbe_channel* channel; } ;
struct xgbe_channel {int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_TCR ; 
 int /*<<< orphan*/  MAC_TCR ; 
 int /*<<< orphan*/  MTL_Q_TQOMR ; 
 int /*<<< orphan*/  ST ; 
 int /*<<< orphan*/  TE ; 
 int /*<<< orphan*/  TXQEN ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*,struct xgbe_channel*) ; 

__attribute__((used)) static void FUNC4(struct xgbe_prv_data *pdata)
{
	struct xgbe_channel *channel;
	unsigned int i;

	/* Prepare for Tx DMA channel stop */
	channel = pdata->channel;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->tx_ring)
			break;

		FUNC3(pdata, channel);
	}

	/* Disable MAC Tx */
	FUNC1(pdata, MAC_TCR, TE, 0);

	/* Disable each Tx queue */
	for (i = 0; i < pdata->tx_q_count; i++)
		FUNC2(pdata, i, MTL_Q_TQOMR, TXQEN, 0);

	/* Disable each Tx DMA channel */
	channel = pdata->channel;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->tx_ring)
			break;

		FUNC0(channel, DMA_CH_TCR, ST, 0);
	}
}