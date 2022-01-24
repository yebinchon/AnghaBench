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
struct vmbus_channel {scalar_t__ ch_refs; int /*<<< orphan*/  ch_detach_task; int /*<<< orphan*/  ch_mgmt_tq; int /*<<< orphan*/  ch_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct vmbus_channel*) ; 
 int FUNC2 (scalar_t__*,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_channel*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct vmbus_channel *chan)
{
	int refs;

	FUNC0(chan->ch_refs > 0, ("chan%u: invalid refcnt %d",
	    chan->ch_id, chan->ch_refs));
	refs = FUNC2(&chan->ch_refs, -1);
#ifdef INVARIANTS
	if (VMBUS_CHAN_ISPRIMARY(chan)) {
		KASSERT(refs == 1, ("chan%u: invalid refcnt %d for prichan",
		    chan->ch_id, refs + 1));
	}
#endif
	if (refs == 1) {
		/*
		 * Detach the target channel.
		 */
		if (bootverbose) {
			FUNC4(chan, "chan%u detached\n",
			    chan->ch_id);
		}
		FUNC3(chan->ch_mgmt_tq, &chan->ch_detach_task);
	}
}