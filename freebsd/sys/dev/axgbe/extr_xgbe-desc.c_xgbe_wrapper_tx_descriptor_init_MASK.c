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
struct xgbe_ring_desc {int dummy; } ;
struct xgbe_ring_data {int rdata_paddr; struct xgbe_ring_desc* rdesc; } ;
struct xgbe_ring {int rdesc_paddr; unsigned int rdesc_count; int /*<<< orphan*/  tx; scalar_t__ dirty; scalar_t__ cur; struct xgbe_ring_desc* rdesc; } ;
struct xgbe_hw_if {int /*<<< orphan*/  (* tx_desc_init ) (struct xgbe_channel*) ;} ;
struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel* channel; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; } ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct xgbe_ring_data* FUNC1 (struct xgbe_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_channel*) ; 

__attribute__((used)) static void FUNC4(struct xgbe_prv_data *pdata)
{
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_channel *channel;
	struct xgbe_ring *ring;
	struct xgbe_ring_data *rdata;
	struct xgbe_ring_desc *rdesc;
	bus_addr_t rdesc_paddr;
	unsigned int i, j;

	FUNC0("-->xgbe_wrapper_tx_descriptor_init\n");

	channel = pdata->channel;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		ring = channel->tx_ring;
		if (!ring)
			break;

		rdesc = ring->rdesc;
		rdesc_paddr = ring->rdesc_paddr;

		for (j = 0; j < ring->rdesc_count; j++) {
			rdata = FUNC1(ring, j);

			rdata->rdesc = rdesc;
			rdata->rdata_paddr = rdesc_paddr;

			rdesc++;
			rdesc_paddr += sizeof(struct xgbe_ring_desc);
		}

		ring->cur = 0;
		ring->dirty = 0;
		FUNC2(&ring->tx, 0, sizeof(ring->tx));

		hw_if->tx_desc_init(channel);
	}

	FUNC0("<--xgbe_wrapper_tx_descriptor_init\n");
}