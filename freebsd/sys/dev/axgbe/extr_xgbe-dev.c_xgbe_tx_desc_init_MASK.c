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
struct xgbe_ring_data {int /*<<< orphan*/  rdata_paddr; } ;
struct xgbe_ring {int cur; int rdesc_count; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DMA_CH_TDLR_HI ; 
 int /*<<< orphan*/  DMA_CH_TDLR_LO ; 
 int /*<<< orphan*/  DMA_CH_TDRLR ; 
 struct xgbe_ring_data* FUNC1 (struct xgbe_ring*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_channel*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_ring_data*) ; 

__attribute__((used)) static void FUNC6(struct xgbe_channel *channel)
{
	struct xgbe_ring *ring = channel->tx_ring;
	struct xgbe_ring_data *rdata;
	int i;
	int start_index = ring->cur;

	FUNC0("-->tx_desc_init\n");

	/* Initialze all descriptors */
	for (i = 0; i < ring->rdesc_count; i++) {
		rdata = FUNC1(ring, i);

		/* Initialize Tx descriptor */
		FUNC5(rdata);
	}

	/* Update the total number of Tx descriptors */
	FUNC2(channel, DMA_CH_TDRLR, ring->rdesc_count - 1);

	/* Update the starting address of descriptor ring */
	rdata = FUNC1(ring, start_index);
	FUNC2(channel, DMA_CH_TDLR_HI,
			  FUNC4(rdata->rdata_paddr));
	FUNC2(channel, DMA_CH_TDLR_LO,
			  FUNC3(rdata->rdata_paddr));

	FUNC0("<--tx_desc_init\n");
}