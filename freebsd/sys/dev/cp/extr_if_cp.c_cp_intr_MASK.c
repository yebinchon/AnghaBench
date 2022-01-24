#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  ifp; int /*<<< orphan*/  queue; int /*<<< orphan*/  running; } ;
typedef  TYPE_2__ drv_t ;
struct TYPE_13__ {size_t num; TYPE_1__* chan; int /*<<< orphan*/ * sys; } ;
typedef  TYPE_3__ cp_board_t ;
struct TYPE_14__ {TYPE_3__* board; } ;
typedef  TYPE_4__ bdrv_t ;
struct TYPE_11__ {TYPE_2__* sys; scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int NCHAN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ cp_destroy ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  cp_led_off ; 
 int hz ; 
 int /*<<< orphan*/ * led_timo ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct mbuf*) ; 

__attribute__((used)) static void FUNC11 (void *arg)
{
	bdrv_t *bd = arg;
	cp_board_t *b = bd->board;
#ifndef NETGRAPH
	int i;
#endif
	int s = FUNC8 ();
	if (cp_destroy) {
		FUNC9 (s);
		return;
	}
	FUNC0 (bd);
	/* Check if we are ready */
	if (b->sys == NULL) {
		/* Not we are not, just cleanup. */
		FUNC6 (b, 1);
		FUNC1 (bd);
		return;
	}
	/* Turn LED on. */
	FUNC7 (b, 1);

	FUNC5 (b);

	/* Turn LED off 50 msec later. */
	FUNC4 (&led_timo[b->num], hz/20, cp_led_off, b);
	FUNC1 (bd);
	FUNC9 (s);

#ifndef NETGRAPH
	/* Pass packets in a lock-free state */
	for (i = 0; i < NCHAN && b->chan[i].type; i++) {
		drv_t *d = b->chan[i].sys;
		struct mbuf *m;
		if (!d || !d->running)
			continue;
		while (FUNC3(&d->queue)) {
			FUNC2 (&d->queue,m);
			if (!m)
				continue;
			FUNC10 (d->ifp, m);	
		}
	}
#endif
}