#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ pkthdr_t ;
struct TYPE_9__ {int oactive; scalar_t__ qlen; int (* send ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pktlist; int /*<<< orphan*/  wr_ev; } ;
typedef  TYPE_2__ channel_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int fd, short ev, void *arg)
{
	channel_t *chan = arg;
	pkthdr_t *ph;

	chan->oactive = true;

	while (chan->qlen > 0) {
		ph = FUNC0(&chan->pktlist);

		FUNC3(chan, 10);
		if (chan->send(chan, ph->data) == false) {
			if (FUNC4(&chan->wr_ev, NULL) == -1) {
				FUNC5("Could not add channel write event: %m");
				FUNC2(chan);
			}
			return;
		}

		FUNC1(&chan->pktlist, next);
		FUNC6(ph);
		chan->qlen--;
	}

	FUNC3(chan, 0);
	chan->oactive = false;
}