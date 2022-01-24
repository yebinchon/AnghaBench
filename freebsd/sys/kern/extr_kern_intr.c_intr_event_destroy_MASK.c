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
struct intr_event {int /*<<< orphan*/  ie_lock; int /*<<< orphan*/ * ie_thread; int /*<<< orphan*/  ie_handlers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 int /*<<< orphan*/  M_ITHREAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct intr_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_list ; 
 int /*<<< orphan*/  event_lock ; 
 int /*<<< orphan*/  FUNC2 (struct intr_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct intr_event *ie)
{

	FUNC5(&event_lock);
	FUNC5(&ie->ie_lock);
	if (!FUNC0(&ie->ie_handlers)) {
		FUNC6(&ie->ie_lock);
		FUNC6(&event_lock);
		return (EBUSY);
	}
	FUNC1(&event_list, ie, ie_list);
#ifndef notyet
	if (ie->ie_thread != NULL) {
		FUNC3(ie->ie_thread);
		ie->ie_thread = NULL;
	}
#endif
	FUNC6(&ie->ie_lock);
	FUNC6(&event_lock);
	FUNC4(&ie->ie_lock);
	FUNC2(ie, M_ITHREAD);
	return (0);
}