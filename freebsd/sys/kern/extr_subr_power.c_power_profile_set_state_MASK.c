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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int POWER_PROFILE_PERFORMANCE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  power_profile_change ; 
 int power_profile_state ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void
FUNC2(int state) 
{
	int		changed;
    
	if (state != power_profile_state) {
		power_profile_state = state;
		changed = 1;
		if (bootverbose) {
			FUNC1("system power profile changed to '%s'\n",
				(state == POWER_PROFILE_PERFORMANCE) ?
				"performance" : "economy");
		}
	} else {
		changed = 0;
	}

	if (changed)
		FUNC0(power_profile_change, 0);
}