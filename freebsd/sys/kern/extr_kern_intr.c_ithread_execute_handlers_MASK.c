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
struct proc {int dummy; } ;
struct intr_event {int ie_flags; scalar_t__ ie_count; char* ie_name; int /*<<< orphan*/  ie_source; int /*<<< orphan*/  (* ie_post_ithread ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  ie_warncnt; int /*<<< orphan*/  ie_warntm; } ;

/* Variables and functions */
 int IE_SOFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,struct intr_event*) ; 
 scalar_t__ intr_storm_threshold ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct proc *p, struct intr_event *ie)
{

	/* Interrupt handlers should not sleep. */
	if (!(ie->ie_flags & IE_SOFT))
		FUNC0();
	FUNC2(p, ie);
	if (!(ie->ie_flags & IE_SOFT))
		FUNC1();

	/*
	 * Interrupt storm handling:
	 *
	 * If this interrupt source is currently storming, then throttle
	 * it to only fire the handler once  per clock tick.
	 *
	 * If this interrupt source is not currently storming, but the
	 * number of back to back interrupts exceeds the storm threshold,
	 * then enter storming mode.
	 */
	if (intr_storm_threshold != 0 && ie->ie_count >= intr_storm_threshold &&
	    !(ie->ie_flags & IE_SOFT)) {
		/* Report the message only once every second. */
		if (FUNC4(&ie->ie_warntm, &ie->ie_warncnt, 1)) {
			FUNC5(
	"interrupt storm detected on \"%s\"; throttling interrupt source\n",
			    ie->ie_name);
		}
		FUNC3("istorm", 1);
	} else
		ie->ie_count++;

	/*
	 * Now that all the handlers have had a chance to run, reenable
	 * the interrupt source.
	 */
	if (ie->ie_post_ithread != NULL)
		ie->ie_post_ithread(ie->ie_source);
}