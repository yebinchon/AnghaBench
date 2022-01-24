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
struct intr_handler {int ih_flags; struct intr_event* ih_event; } ;
struct intr_event {int /*<<< orphan*/  ie_lock; int /*<<< orphan*/ * ie_thread; } ;

/* Variables and functions */
 int IH_CHANGED ; 
 int IH_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct intr_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct intr_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct intr_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct intr_handler *handler)
{
	struct intr_event *ie;

	ie = handler->ih_event;
	FUNC4(&ie->ie_lock, MA_OWNED);
	FUNC0((handler->ih_flags & IH_DEAD) == 0,
	    ("update for a removed handler"));

	if (ie->ie_thread == NULL) {
		FUNC1(ie);
		return;
	}
	if ((handler->ih_flags & IH_CHANGED) == 0) {
		handler->ih_flags |= IH_CHANGED;
		FUNC2(ie);
	}
	while ((handler->ih_flags & IH_CHANGED) != 0)
		FUNC3(handler, &ie->ie_lock, 0, "ih_barr", 0);
}