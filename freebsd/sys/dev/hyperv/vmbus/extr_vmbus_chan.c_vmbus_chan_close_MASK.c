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
struct vmbus_channel {int ch_subchan_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*) ; 
 struct vmbus_channel** FUNC3 (struct vmbus_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_channel**,int) ; 

void
FUNC5(struct vmbus_channel *chan)
{
	int subchan_cnt;

	if (!FUNC0(chan)) {
		/*
		 * Sub-channel is closed when its primary channel
		 * is closed; done.
		 */
		return;
	}

	/*
	 * Close all sub-channels, if any.
	 */
	subchan_cnt = chan->ch_subchan_cnt;
	if (subchan_cnt > 0) {
		struct vmbus_channel **subchan;
		int i;

		subchan = FUNC3(chan, subchan_cnt);
		for (i = 0; i < subchan_cnt; ++i) {
			FUNC1(subchan[i]);
			/*
			 * This sub-channel is referenced, when it is
			 * linked to the primary channel; drop that
			 * reference now.
			 */
			FUNC2(subchan[i]);
		}
		FUNC4(subchan, subchan_cnt);
	}

	/* Then close the primary channel. */
	FUNC1(chan);
}