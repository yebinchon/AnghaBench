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
struct intr_event {int /*<<< orphan*/  ie_lock; TYPE_2__* ie_thread; } ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;
struct TYPE_4__ {TYPE_1__* it_thread; } ;
struct TYPE_3__ {int /*<<< orphan*/  td_tid; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct intr_event *ie, cpuset_t *cs)
{
	lwpid_t id;

	FUNC1(&ie->ie_lock);
	if (ie->ie_thread != NULL) {
		id = ie->ie_thread->it_thread->td_tid;
		FUNC2(&ie->ie_lock);
		return (FUNC0(id, cs));
	} else {
		FUNC2(&ie->ie_lock);
	}
	return (ENODEV);
}