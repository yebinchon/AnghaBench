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
struct es_info {scalar_t__ polling; TYPE_1__* ch; int /*<<< orphan*/  poll_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct es_info*) ; 
 int ES_NCHANS ; 
 int /*<<< orphan*/  FUNC1 (struct es_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void (*) (void*),struct es_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct es_info*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct es_info *es = arg;
	uint32_t trigger = 0;
	int i;

	if (es == NULL)
		return;

	FUNC0(es);
	if (es->polling == 0 || FUNC4(es) == 0) {
		FUNC1(es);
		return;
	}

	for (i = 0; i < ES_NCHANS; i++) {
		if (FUNC5(&es->ch[i]) != 0)
			trigger |= 1 << i;
	}

	/* XXX */
	FUNC2(&es->poll_timer, 1/*es->poll_ticks*/,
	    es_poll_callback, es);

	FUNC1(es);

	for (i = 0; i < ES_NCHANS; i++) {
		if (trigger & (1 << i))
			FUNC3(es->ch[i].channel);
	}
}