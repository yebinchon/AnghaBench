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
typedef  int uint32_t ;
struct dmar_unit {int inv_queue_avail; int inv_queue_tail; int /*<<< orphan*/  inv_queue_full; scalar_t__ inv_queue_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int DMAR_IQH_MASK ; 
 int /*<<< orphan*/  DMAR_IQH_REG ; 
 int DMAR_IQ_DESCR_SZ ; 
 int DMAR_IQ_DESCR_SZ_SHIFT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int FUNC3 (struct dmar_unit*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct dmar_unit *unit, int descr_count)
{
	uint32_t head;
	int bytes;

	FUNC0(unit);
	bytes = descr_count << DMAR_IQ_DESCR_SZ_SHIFT;
	for (;;) {
		if (bytes <= unit->inv_queue_avail)
			break;
		/* refill */
		head = FUNC3(unit, DMAR_IQH_REG);
		head &= DMAR_IQH_MASK;
		unit->inv_queue_avail = head - unit->inv_queue_tail -
		    DMAR_IQ_DESCR_SZ;
		if (head <= unit->inv_queue_tail)
			unit->inv_queue_avail += unit->inv_queue_size;
		if (bytes <= unit->inv_queue_avail)
			break;

		/*
		 * No space in the queue, do busy wait.  Hardware must
		 * make a progress.  But first advance the tail to
		 * inform the descriptor streamer about entries we
		 * might have already filled, otherwise they could
		 * clog the whole queue..
		 */
		FUNC2(unit);
		unit->inv_queue_full++;
		FUNC1();
	}
	unit->inv_queue_avail -= bytes;
}