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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct vmbus_txbr {scalar_t__ txbr_windex; int /*<<< orphan*/  txbr_lock; } ;
struct iovec {scalar_t__ iov_len; int* iov_base; } ;
typedef  int /*<<< orphan*/  save_windex ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct vmbus_txbr*) ; 
 scalar_t__ FUNC4 (struct vmbus_txbr*,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_txbr*,scalar_t__) ; 

int
FUNC6(struct vmbus_txbr *tbr, const struct iovec iov[], int iovlen,
    boolean_t *need_sig)
{
	uint32_t old_windex, windex, total;
	uint64_t save_windex;
	int i;

	total = 0;
	for (i = 0; i < iovlen; i++)
		total += iov[i].iov_len;
	total += sizeof(save_windex);

	FUNC1(&tbr->txbr_lock);

	/*
	 * NOTE:
	 * If this write is going to make br_windex same as br_rindex,
	 * i.e. the available space for write is same as the write size,
	 * we can't do it then, since br_windex == br_rindex means that
	 * the bufring is empty.
	 */
	if (FUNC3(tbr) <= total) {
		FUNC2(&tbr->txbr_lock);
		return (EAGAIN);
	}

	/* Save br_windex for later use */
	old_windex = tbr->txbr_windex;

	/*
	 * Copy the scattered channel packet to the TX bufring.
	 */
	windex = old_windex;
	for (i = 0; i < iovlen; i++) {
		windex = FUNC4(tbr, windex,
		    iov[i].iov_base, iov[i].iov_len);
	}

	/*
	 * Set the offset of the current channel packet.
	 */
	save_windex = ((uint64_t)old_windex) << 32;
	windex = FUNC4(tbr, windex, &save_windex,
	    sizeof(save_windex));

	/*
	 * Update the write index _after_ the channel packet
	 * is copied.
	 */
	FUNC0();
	tbr->txbr_windex = windex;

	FUNC2(&tbr->txbr_lock);

	*need_sig = FUNC5(tbr, old_windex);

	return (0);
}