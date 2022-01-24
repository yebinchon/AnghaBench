#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty {struct com_s* t_sc; } ;
struct com_s {int extra_state; scalar_t__ etc; int state; scalar_t__ ibuf; scalar_t__ iptr; TYPE_2__* tp; TYPE_1__* obufs; } ;
typedef  void* bool_t ;
struct TYPE_4__ {int /*<<< orphan*/  t_state; } ;
struct TYPE_3__ {void* l_queued; } ;

/* Variables and functions */
 int CD1400_CCR_CMDRESET ; 
 int CD1400_CCR_FTF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int CSE_ODONE ; 
 int CS_BUSY ; 
 int CS_ODONE ; 
 scalar_t__ ETC_BREAK_ENDED ; 
 scalar_t__ ETC_NONE ; 
 void* FALSE ; 
 int FREAD ; 
 int FWRITE ; 
 scalar_t__ LOTS_OF_EVENTS ; 
 void* TRUE ; 
 int /*<<< orphan*/  TS_BUSY ; 
 int /*<<< orphan*/  FUNC2 (struct com_s*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  cy_events ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC7(struct tty *tp, int rw)
{
	struct com_s	*com;
	bool_t		wakeup_etc;

	com = tp->t_sc;
	wakeup_etc = FALSE;
	FUNC3();
	FUNC0();
	if (rw & FWRITE) {
		com->obufs[0].l_queued = FALSE;
		com->obufs[1].l_queued = FALSE;
		if (com->extra_state & CSE_ODONE) {
			cy_events -= LOTS_OF_EVENTS;
			com->extra_state &= ~CSE_ODONE;
			if (com->etc != ETC_NONE) {
				if (com->etc == ETC_BREAK_ENDED)
					com->etc = ETC_NONE;
				wakeup_etc = TRUE;
			}
		}
		com->tp->t_state &= ~TS_BUSY;
		if (com->state & CS_ODONE)
			cy_events -= LOTS_OF_EVENTS;
		com->state &= ~(CS_ODONE | CS_BUSY);
	}
	if (rw & FREAD) {
		/* XXX no way to reset only input fifo. */
		cy_events -= (com->iptr - com->ibuf);
		com->iptr = com->ibuf;
	}
	FUNC1();
	FUNC4();
	if (wakeup_etc)
		FUNC6(&com->etc);
	if (rw & FWRITE && com->etc == ETC_NONE)
		FUNC2(com, CD1400_CCR_CMDRESET | CD1400_CCR_FTF);
	FUNC5(tp);
}