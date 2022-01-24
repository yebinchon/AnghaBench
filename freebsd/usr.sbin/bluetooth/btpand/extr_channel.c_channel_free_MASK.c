#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ refcnt; scalar_t__ state; scalar_t__ qlen; struct TYPE_5__* sendbuf; struct TYPE_5__* mfilter; struct TYPE_5__* pfilter; int /*<<< orphan*/  pktlist; } ;
typedef  TYPE_1__ channel_t ;

/* Variables and functions */
 scalar_t__ CHANNEL_CLOSED ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  channel_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  next ; 
 scalar_t__ server_limit ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(channel_t *chan)
{

	FUNC2(chan->refcnt == 0);
	FUNC2(chan->state == CHANNEL_CLOSED);
	FUNC2(chan->qlen == 0);
	FUNC2(FUNC1(&chan->pktlist));

	FUNC0(chan, next);
	FUNC4(chan->pfilter);
	FUNC4(chan->mfilter);
	FUNC4(chan->sendbuf);
	FUNC4(chan);

	FUNC6(--channel_count);

	if (server_limit == 0) {
		FUNC5("connection closed, exiting");
		FUNC3(EXIT_SUCCESS);
	}
}