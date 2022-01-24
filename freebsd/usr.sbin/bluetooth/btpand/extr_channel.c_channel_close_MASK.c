#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pkthdr_t ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ refcnt; int /*<<< orphan*/ * pfh; int /*<<< orphan*/  qlen; int /*<<< orphan*/  pktlist; scalar_t__ tick; int /*<<< orphan*/  fd; int /*<<< orphan*/  wr_ev; int /*<<< orphan*/  rd_ev; } ;
typedef  TYPE_1__ channel_t ;

/* Variables and functions */
 scalar_t__ CHANNEL_CLOSED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(channel_t *chan)
{
	pkthdr_t *ph;

	FUNC2(chan->state != CHANNEL_CLOSED);

	FUNC6("(fd#%d)", chan->fd);

	chan->state = CHANNEL_CLOSED;
	FUNC5(&chan->rd_ev);
	FUNC5(&chan->wr_ev);
	FUNC4(chan->fd);
	chan->refcnt--;
	chan->tick = 0;

	while ((ph = FUNC0(&chan->pktlist)) != NULL) {
		FUNC1(&chan->pktlist, next);
		FUNC8(ph);
		chan->qlen--;
	}

	if (chan->pfh != NULL) {
		FUNC7(chan->pfh);
		chan->pfh = NULL;
	}

	if (chan->refcnt == 0)
		FUNC3(chan);
}