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
struct mevent {int me_state; int me_cq; } ;

/* Variables and functions */
 int EV_DELETE ; 
 int EV_DISABLE ; 
 int EV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  change_head ; 
 int /*<<< orphan*/  me_list ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct mevent *evp, bool enable)
{
	int newstate;

	FUNC4();

	/*
	 * It's not possible to enable/disable a deleted event
	 */
	FUNC2((evp->me_state & EV_DELETE) == 0);

	newstate = evp->me_state;
	if (enable) {
		newstate |= EV_ENABLE;
		newstate &= ~EV_DISABLE;
	} else {
		newstate |= EV_DISABLE;
		newstate &= ~EV_ENABLE;
	}

	/*
	 * No update needed if state isn't changing
	 */
	if (evp->me_state != newstate) {
		evp->me_state = newstate;

		/*
		 * Place the entry onto the changed list if not
		 * already there.
		 */
		if (evp->me_cq == 0) {
			evp->me_cq = 1;
			FUNC1(evp, me_list);
			FUNC0(&change_head, evp, me_list);
			FUNC3();
		}
	}

	FUNC5();

	return (0);
}