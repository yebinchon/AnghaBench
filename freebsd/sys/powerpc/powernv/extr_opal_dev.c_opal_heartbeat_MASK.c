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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int OPAL_EVENT_MSG_PENDING ; 
 int /*<<< orphan*/  OPAL_POLL_EVENTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  opal_hb_proc ; 
 scalar_t__ opal_heartbeat_ms ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	uint64_t events;

	if (opal_heartbeat_ms == 0)
		FUNC1(0);

	while (1) {
		events = 0;
		/* Turn the OPAL state crank */
		FUNC2(OPAL_POLL_EVENTS, FUNC5(&events));
		if (events & OPAL_EVENT_MSG_PENDING)
			FUNC3();
		FUNC4(opal_hb_proc, 0, "opal",
		    FUNC0(opal_heartbeat_ms));
	}
}