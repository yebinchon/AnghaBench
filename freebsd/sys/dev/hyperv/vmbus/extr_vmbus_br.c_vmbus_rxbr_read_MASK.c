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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct vmbus_rxbr {scalar_t__ rxbr_dsize; scalar_t__ rxbr_rindex; int /*<<< orphan*/  rxbr_lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct vmbus_rxbr*) ; 
 scalar_t__ FUNC6 (struct vmbus_rxbr*,scalar_t__,void*,int) ; 

int
FUNC7(struct vmbus_rxbr *rbr, void *data, int dlen, uint32_t skip)
{
	uint32_t rindex, br_dsize = rbr->rxbr_dsize;

	FUNC0(dlen + skip > 0, ("invalid dlen %d, offset %u", dlen, skip));

	FUNC3(&rbr->rxbr_lock);

	if (FUNC5(rbr) < dlen + skip + sizeof(uint64_t)) {
		FUNC4(&rbr->rxbr_lock);
		return (EAGAIN);
	}

	/*
	 * Copy channel packet from RX bufring.
	 */
	rindex = FUNC1(rbr->rxbr_rindex, skip, br_dsize);
	rindex = FUNC6(rbr, rindex, data, dlen);

	/*
	 * Discard this channel packet's 64bits offset, which is useless to us.
	 */
	rindex = FUNC1(rindex, sizeof(uint64_t), br_dsize);

	/*
	 * Update the read index _after_ the channel packet is fetched.
	 */
	FUNC2();
	rbr->rxbr_rindex = rindex;

	FUNC4(&rbr->rxbr_lock);

	return (0);
}