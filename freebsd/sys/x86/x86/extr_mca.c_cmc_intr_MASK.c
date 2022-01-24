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
 int /*<<< orphan*/  CMCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{

	/*
	 * Serialize MCA bank scanning to prevent collisions from
	 * sibling threads.
	 *
	 * If we found anything, log them to the console.
	 */
	if (FUNC1(CMCI, NULL) != 0)
		FUNC0(CMCI);
}