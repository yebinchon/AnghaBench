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
struct user_evtchn {int enabled; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int FILTER_SCHEDULE_THREAD ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evtchn_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *arg)
{
	struct user_evtchn *evtchn;

	evtchn = arg;

	if (!evtchn->enabled && bootverbose) {
		FUNC0(evtchn_dev,
		    "Received upcall for disabled event channel %d\n",
		    evtchn->port);
	}

	FUNC1(evtchn->port);
	evtchn->enabled = false;

	return (FILTER_SCHEDULE_THREAD);
}