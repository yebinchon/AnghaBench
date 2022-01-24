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
struct vmbus_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WAIT_COUNT ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct vmbus_channel const*) ; 

__attribute__((used)) static bool
FUNC3(const struct vmbus_channel *chan, bool can_sleep)
{
#define WAIT_COUNT	200	/* 200ms */

	int i;

	for (i = 0; i < WAIT_COUNT; ++i) {
		if (FUNC2(chan))
			return (true);
		if (can_sleep)
			FUNC1("wchrev", 1);
		else
			FUNC0(1000);
	}
	return (false);

#undef WAIT_COUNT
}