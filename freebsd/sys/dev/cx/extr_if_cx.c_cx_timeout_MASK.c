#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int atimeout; TYPE_2__* board; int /*<<< orphan*/  intr_action; TYPE_1__* tty; } ;
typedef  TYPE_3__ drv_t ;
typedef  int /*<<< orphan*/  bdrv_t ;
struct TYPE_7__ {scalar_t__ sys; } ;
struct TYPE_6__ {int t_state; scalar_t__ t_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CX_WRITE ; 
 int MY_SOFT_INTR ; 
 int NCHAN ; 
 int NCX ; 
 int TS_BUSY ; 
 int /*<<< orphan*/ ** adapter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void (*) (void*),int /*<<< orphan*/ ) ; 
 TYPE_3__** channel ; 
 int /*<<< orphan*/  cx_fast_ih ; 
 int hz ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout_handle ; 

__attribute__((used)) static void FUNC7 (void *arg)
{
	drv_t *d;
	int s, i, k;

	for (i = 0; i < NCX; i++) {
		if (adapter[i] == NULL)
			continue;
		for (k = 0; k < NCHAN; ++k) {
			d = channel[i * NCHAN + k];
			if (! d)
				continue;
			s = FUNC4 ();
			FUNC1 ((bdrv_t *)d->board->sys);
			if (d->atimeout == 1 && d->tty && d->tty->t_state & TS_BUSY) {
				d->tty->t_state &= ~TS_BUSY;
				if (d->tty->t_dev) {
					d->intr_action |= CX_WRITE;
					MY_SOFT_INTR = 1;
					FUNC6 (cx_fast_ih, 0);
				}
				FUNC0 (d, ("cx_timeout\n"));
			}
			if (d->atimeout)
				d->atimeout--;
			FUNC2 ((bdrv_t *)d->board->sys);
			FUNC5 (s);
		}
	}
	FUNC3 (&timeout_handle, hz*5, cx_timeout, 0);
}