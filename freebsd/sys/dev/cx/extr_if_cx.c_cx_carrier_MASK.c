#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cd; scalar_t__ tty; int /*<<< orphan*/ * chan; TYPE_1__* board; } ;
typedef  TYPE_2__ drv_t ;
typedef  int /*<<< orphan*/  cx_chan_t ;
typedef  int /*<<< orphan*/  bdrv_t ;
struct TYPE_4__ {int /*<<< orphan*/ * sys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC7 (void *arg)
{
	drv_t *d = arg;
	bdrv_t *bd = d->board->sys;
	cx_chan_t *c = d->chan;
	int s, cd;

	s = FUNC4 ();
	FUNC1 (bd);
	cd = FUNC3 (c);
	if (d->cd != cd) {
		if (cd) {
			FUNC0 (d, ("carrier on\n"));
			d->cd = 1;
			FUNC2 (bd);
			FUNC5 (s);
			if (d->tty)
				FUNC6(d->tty, 1);
		} else {
			FUNC0 (d, ("carrier loss\n"));
			d->cd = 0;
			FUNC2 (bd);
			FUNC5 (s);
			if (d->tty)
				FUNC6(d->tty, 0);
		}
	} else {
		FUNC2 (bd);
		FUNC5 (s);
	}
}