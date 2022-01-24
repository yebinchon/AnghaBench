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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 

int FUNC3(void)
{
	int val = -1;

	if (!FUNC2("splitindex.maxpercentchange", &val)) {
		if (0 <= val && val <= 100)
			return val;

		return FUNC1(FUNC0("splitIndex.maxPercentChange value '%d' "
			       "should be between 0 and 100"), val);
	}

	return -1; /* default value */
}