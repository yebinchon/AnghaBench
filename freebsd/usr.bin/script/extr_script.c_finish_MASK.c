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
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ child ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	int e, status;

	if (FUNC5(child, &status, 0) == child) {
		if (FUNC1(status))
			e = FUNC0(status);
		else if (FUNC2(status))
			e = FUNC3(status);
		else /* can't happen */
			e = 1;
		FUNC4(e);
	}
}