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
FUNC1(const char *s, const char *f, int l)
{
	int i;
	if (trace_level < TRACE_WANTED)
	{
		for (i = 0; i < trace_level; ++i)
			FUNC0("\t");

		FUNC0("=> %s\n", s);
	}

	++trace_level;
}