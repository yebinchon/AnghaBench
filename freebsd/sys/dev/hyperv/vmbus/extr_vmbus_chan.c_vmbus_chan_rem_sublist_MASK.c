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
struct vmbus_channel {scalar_t__ ch_subchan_cnt; int /*<<< orphan*/  ch_subchans; int /*<<< orphan*/  ch_stflags; int /*<<< orphan*/  ch_subchan_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vmbus_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMBUS_CHAN_ST_ONSUBL_SHIFT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ch_sublink ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct vmbus_channel *prichan,
    struct vmbus_channel *chan)
{

	FUNC3(&prichan->ch_subchan_lock, MA_OWNED);

	FUNC0(prichan->ch_subchan_cnt > 0,
	    ("invalid subchan_cnt %d", prichan->ch_subchan_cnt));
	prichan->ch_subchan_cnt--;

	if (FUNC2(&chan->ch_stflags,
	    VMBUS_CHAN_ST_ONSUBL_SHIFT) == 0)
		FUNC4("channel is not on the sublist");
	FUNC1(&prichan->ch_subchans, chan, ch_sublink);
}