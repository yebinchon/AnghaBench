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
struct intr_handler {int /*<<< orphan*/  ih_flags; int /*<<< orphan*/  ih_name; struct intr_event* ih_event; } ;
struct intr_event {int /*<<< orphan*/  ie_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IH_SUSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct intr_handler*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(void *cookie)
{
	struct intr_handler *handler = (struct intr_handler *)cookie;
	struct intr_event *ie;

	if (handler == NULL)
		return (EINVAL);
	ie = handler->ih_event;
	FUNC0(ie != NULL,
	    ("interrupt handler \"%s\" has a NULL interrupt event",
	    handler->ih_name));
	FUNC2(&ie->ie_lock);
	handler->ih_flags |= IH_SUSP;
	FUNC1(handler);
	FUNC3(&ie->ie_lock);
	return (0);
}