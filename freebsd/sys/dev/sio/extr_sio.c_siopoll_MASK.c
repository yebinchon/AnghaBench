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
typedef  int u_char ;
struct tty {int dummy; } ;
struct com_s {int iptr; int ibuf; int state; int last_modem_status; int prev_modem_status; int extra_state; scalar_t__ gone; struct tty* tp; } ;

/* Variables and functions */
 int CSE_BUSYCHECK ; 
 int CS_BUSY ; 
 int CS_CHECKMSR ; 
 int CS_ODONE ; 
 scalar_t__ LOTS_OF_EVENTS ; 
 int MSR_DCD ; 
 struct com_s* FUNC0 (int) ; 
 scalar_t__ com_events ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sio_lock ; 
 int sio_numunits ; 
 int /*<<< orphan*/  siobusycheck ; 
 int /*<<< orphan*/  FUNC3 (struct com_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct com_s*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 

__attribute__((used)) static void
FUNC7(void *dummy)
{
	int		unit;

	if (com_events == 0)
		return;
repeat:
	for (unit = 0; unit < sio_numunits; ++unit) {
		struct com_s	*com;
		int		incc;
		struct tty	*tp;

		com = FUNC0(unit);
		if (com == NULL)
			continue;
		tp = com->tp;
		if (tp == NULL || com->gone) {
			/*
			 * Discard any events related to never-opened or
			 * going-away devices.
			 */
			FUNC1(&sio_lock);
			incc = com->iptr - com->ibuf;
			com->iptr = com->ibuf;
			if (com->state & CS_CHECKMSR) {
				incc += LOTS_OF_EVENTS;
				com->state &= ~CS_CHECKMSR;
			}
			com_events -= incc;
			FUNC2(&sio_lock);
			continue;
		}
		if (com->iptr != com->ibuf) {
			FUNC1(&sio_lock);
			FUNC3(com);
			FUNC2(&sio_lock);
		}
		if (com->state & CS_CHECKMSR) {
			u_char	delta_modem_status;

			FUNC1(&sio_lock);
			delta_modem_status = com->last_modem_status
					     ^ com->prev_modem_status;
			com->prev_modem_status = com->last_modem_status;
			com_events -= LOTS_OF_EVENTS;
			com->state &= ~CS_CHECKMSR;
			FUNC2(&sio_lock);
			if (delta_modem_status & MSR_DCD)
				FUNC5(tp,
				    com->prev_modem_status & MSR_DCD);
		}
		if (com->state & CS_ODONE) {
			FUNC1(&sio_lock);
			com_events -= LOTS_OF_EVENTS;
			com->state &= ~CS_ODONE;
			FUNC2(&sio_lock);
			if (!(com->state & CS_BUSY)
			    && !(com->extra_state & CSE_BUSYCHECK)) {
				FUNC4(siobusycheck, com, hz / 100);
				com->extra_state |= CSE_BUSYCHECK;
			}
			FUNC6(tp);
		}
		if (com_events == 0)
			break;
	}
	if (com_events >= LOTS_OF_EVENTS)
		goto repeat;
}