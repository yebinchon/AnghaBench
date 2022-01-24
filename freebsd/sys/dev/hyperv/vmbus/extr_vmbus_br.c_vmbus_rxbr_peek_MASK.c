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
struct vmbus_rxbr {int /*<<< orphan*/  rxbr_lock; int /*<<< orphan*/  rxbr_rindex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vmbus_rxbr*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_rxbr*,int /*<<< orphan*/ ,void*,int) ; 

int
FUNC4(struct vmbus_rxbr *rbr, void *data, int dlen)
{
	FUNC0(&rbr->rxbr_lock);

	/*
	 * The requested data and the 64bits channel packet
	 * offset should be there at least.
	 */
	if (FUNC2(rbr) < dlen + sizeof(uint64_t)) {
		FUNC1(&rbr->rxbr_lock);
		return (EAGAIN);
	}
	FUNC3(rbr, rbr->rxbr_rindex, data, dlen);

	FUNC1(&rbr->rxbr_lock);

	return (0);
}