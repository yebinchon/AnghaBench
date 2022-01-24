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
 int TRACE_WANTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int trace_level ; 

void
FUNC1(const char *desc, int i, const char *f, int l)
{
	int j;

	if (trace_level < TRACE_WANTED)
	{
		for (j = 0; j < trace_level - 1; ++j)
			FUNC0("\t");

		FUNC0("= INT %s: %i, %s: %d\n",desc, i, f, l);
	}
}