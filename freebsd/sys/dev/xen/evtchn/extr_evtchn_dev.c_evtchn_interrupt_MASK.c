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
struct user_evtchn {int /*<<< orphan*/  port; struct per_user_data* user; } ;
struct per_user_data {scalar_t__ ring_prod; scalar_t__ ring_cons; int ring_overflow; int /*<<< orphan*/  ring_prod_mutex; int /*<<< orphan*/  ev_rsel; int /*<<< orphan*/ * ring; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ EVTCHN_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct per_user_data*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct user_evtchn *evtchn;
	struct per_user_data *u;

	evtchn = arg;
	u = evtchn->user;

	/*
	 * Protect against concurrent events using this handler
	 * on different CPUs.
	 */
	FUNC1(&u->ring_prod_mutex);
	if ((u->ring_prod - u->ring_cons) < EVTCHN_RING_SIZE) {
		u->ring[FUNC0(u->ring_prod)] = evtchn->port;
		FUNC5(); /* Ensure ring contents visible */
		if (u->ring_cons == u->ring_prod++) {
			FUNC4(u);
			FUNC3(&u->ev_rsel);
		}
	} else
		u->ring_overflow = 1;
	FUNC2(&u->ring_prod_mutex);
}