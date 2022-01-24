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
typedef  scalar_t__ u_int ;

/* Variables and functions */
#define  POWER_PROFILE_ECONOMY 129 
#define  POWER_PROFILE_PERFORMANCE 128 
 scalar_t__ crusoe_economy_longrun ; 
 scalar_t__ crusoe_performance_longrun ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	int	state;
	u_int	new;

	state = FUNC0();
	if (state != POWER_PROFILE_PERFORMANCE &&
	    state != POWER_PROFILE_ECONOMY) {
		return;
	}

	switch (state) {
	case POWER_PROFILE_PERFORMANCE:
		new =crusoe_performance_longrun;
		break;
	case POWER_PROFILE_ECONOMY:
		new = crusoe_economy_longrun;
		break;
	default:
		new = FUNC1();
		break;
	}

	if (FUNC1() != new) {
		FUNC2(new);
	}
}