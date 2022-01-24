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
struct xgbe_ring_data {int /*<<< orphan*/  rdata_paddr; } ;
struct TYPE_2__ {scalar_t__ xmit_more; } ;
struct xgbe_ring {TYPE_1__ tx; int /*<<< orphan*/  cur; } ;
struct xgbe_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_TDTR_LO ; 
 struct xgbe_ring_data* FUNC0 (struct xgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xgbe_channel *channel,
			       struct xgbe_ring *ring)
{
	struct xgbe_ring_data *rdata;

	/* Issue a poll command to Tx DMA by writing address
	 * of next immediate free descriptor */
	rdata = FUNC0(ring, ring->cur);
	FUNC1(channel, DMA_CH_TDTR_LO,
			  FUNC2(rdata->rdata_paddr));

	ring->tx.xmit_more = 0;
}