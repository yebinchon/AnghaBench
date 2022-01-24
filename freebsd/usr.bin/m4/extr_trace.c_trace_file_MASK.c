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
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ stderr ; 
 scalar_t__ traceout ; 

void
FUNC3(const char *name)
{

	if (traceout && traceout != stderr)
		FUNC1(traceout);
	traceout = FUNC2(name, "w");
	if (!traceout)
		FUNC0(1, "can't open %s", name);
}