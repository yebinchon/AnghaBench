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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,...) ; 

int
FUNC5(device_t me, device_t child)
{
	int retval = 0, flags;

	retval += FUNC0(me, child);
	retval += FUNC4(" on %s drive %d", FUNC2(me),
	       FUNC3(child));
	if ((flags = FUNC1(me)) != 0)
		retval += FUNC4(" flags %#x", flags);
	retval += FUNC4("\n");

	return (retval);
}