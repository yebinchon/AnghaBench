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
struct user_evtchn {int enabled; int /*<<< orphan*/  handle; struct per_user_data* user; int /*<<< orphan*/  port; } ;
struct per_user_data {int /*<<< orphan*/  bind_mutex; int /*<<< orphan*/  evtchns; } ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  M_EVTCHN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct user_evtchn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct user_evtchn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evtchn_dev ; 
 int /*<<< orphan*/  evtchn_filter ; 
 int /*<<< orphan*/  evtchn_interrupt ; 
 int /*<<< orphan*/  evtchn_tree ; 
 int /*<<< orphan*/  FUNC3 (struct user_evtchn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct user_evtchn*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC9(struct per_user_data *u, struct user_evtchn *evtchn)
{
	int error;

	evtchn->port = FUNC7(evtchn->handle);
	evtchn->user = u;
	evtchn->enabled = true;
	FUNC4(&u->bind_mutex);
	FUNC0(evtchn_tree, &u->evtchns, evtchn);
	FUNC5(&u->bind_mutex);
	error = FUNC6(FUNC2(evtchn_dev),
	    evtchn_filter, evtchn_interrupt, evtchn,
	    INTR_TYPE_MISC | INTR_MPSAFE, evtchn->handle);
	if (error != 0) {
		FUNC8(&evtchn->handle);
		FUNC4(&u->bind_mutex);
		FUNC1(evtchn_tree, &u->evtchns, evtchn);
		FUNC5(&u->bind_mutex);
		FUNC3(evtchn, M_EVTCHN);
	}
	return (error);
}