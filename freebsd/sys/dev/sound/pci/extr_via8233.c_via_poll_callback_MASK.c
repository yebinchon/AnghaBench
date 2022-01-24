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
typedef  int uint32_t ;
struct via_info {scalar_t__ polling; TYPE_1__* rch; TYPE_1__* pch; int /*<<< orphan*/  lock; int /*<<< orphan*/  poll_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int NDXSCHANS ; 
 int NMSGDCHANS ; 
 int NWRCHANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct via_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct via_info*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct via_info *via = arg;
	uint32_t ptrigger = 0, rtrigger = 0;
	int i;

	if (via == NULL)
		return;

	FUNC2(via->lock);
	if (via->polling == 0 || FUNC4(via) == 0) {
		FUNC3(via->lock);
		return;
	}

	for (i = 0; i < NDXSCHANS + NMSGDCHANS; i++)
		ptrigger |= (FUNC5(&via->pch[i]) != 0) ?
		    (1 << i) : 0;

	for (i = 0; i < NWRCHANS; i++)
		rtrigger |= (FUNC5(&via->rch[i]) != 0) ?
		    (1 << i) : 0;

	/* XXX */
	FUNC0(&via->poll_timer, 1/*via->poll_ticks*/,
	    via_poll_callback, via);

	FUNC3(via->lock);

	for (i = 0; i < NDXSCHANS + NMSGDCHANS; i++) {
		if (ptrigger & (1 << i))
			FUNC1(via->pch[i].channel);
	}
	for (i = 0; i < NWRCHANS; i++) {
		if (rtrigger & (1 << i))
			FUNC1(via->rch[i].channel);
	}
}