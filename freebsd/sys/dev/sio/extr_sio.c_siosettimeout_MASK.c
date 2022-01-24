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
struct com_s {scalar_t__ poll_output; scalar_t__ poll; int /*<<< orphan*/  gone; TYPE_1__* tp; } ;
typedef  scalar_t__ bool_t ;
struct TYPE_2__ {int t_state; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int TS_ISOPEN ; 
 struct com_s* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int hz ; 
 int sio_numunits ; 
 int sio_timeout ; 
 int /*<<< orphan*/  sio_timeout_handle ; 
 int sio_timeouts_until_log ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (void*),void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (void*),void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4()
{
	struct com_s	*com;
	bool_t		someopen;
	int		unit;

	/*
	 * Set our timeout period to 1 second if no polled devices are open.
	 * Otherwise set it to max(1/200, 1/hz).
	 * Enable timeouts iff some device is open.
	 */
	FUNC3(comwakeup, (void *)NULL, sio_timeout_handle);
	sio_timeout = hz;
	someopen = FALSE;
	for (unit = 0; unit < sio_numunits; ++unit) {
		com = FUNC0(unit);
		if (com != NULL && com->tp != NULL
		    && com->tp->t_state & TS_ISOPEN && !com->gone) {
			someopen = TRUE;
			if (com->poll || com->poll_output) {
				sio_timeout = hz > 200 ? hz / 200 : 1;
				break;
			}
		}
	}
	if (someopen) {
		sio_timeouts_until_log = hz / sio_timeout;
		sio_timeout_handle = FUNC2(comwakeup, (void *)NULL,
					     sio_timeout);
	} else {
		/* Flush error messages, if any. */
		sio_timeouts_until_log = 1;
		FUNC1((void *)NULL);
		FUNC3(comwakeup, (void *)NULL, sio_timeout_handle);
	}
}