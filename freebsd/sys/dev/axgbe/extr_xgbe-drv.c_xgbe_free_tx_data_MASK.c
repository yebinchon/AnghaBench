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
struct xgbe_ring_data {int dummy; } ;
struct xgbe_ring {unsigned int rdesc_count; } ;
struct xgbe_desc_if {int /*<<< orphan*/  (* unmap_rdata ) (struct xgbe_prv_data*,struct xgbe_ring_data*) ;} ;
struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel* channel; struct xgbe_desc_if desc_if; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct xgbe_ring_data* FUNC1 (struct xgbe_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,struct xgbe_ring_data*) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	struct xgbe_desc_if *desc_if = &pdata->desc_if;
	struct xgbe_channel *channel;
	struct xgbe_ring *ring;
	struct xgbe_ring_data *rdata;
	unsigned int i, j;

	FUNC0("-->xgbe_free_tx_data\n");

	channel = pdata->channel;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		ring = channel->tx_ring;
		if (!ring)
			break;

		for (j = 0; j < ring->rdesc_count; j++) {
			rdata = FUNC1(ring, j);
			desc_if->unmap_rdata(pdata, rdata);
		}
	}

	FUNC0("<--xgbe_free_tx_data\n");
}