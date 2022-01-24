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
 int TRACE_QUOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* lquote ; 
 char* rquote ; 
 int trace_flags ; 
 int /*<<< orphan*/  traceout ; 

void
FUNC2(size_t mark)
{
	FUNC1(traceout, " -> ");
	if (trace_flags & TRACE_QUOTE)
		FUNC1(traceout, "%s", lquote);
	FUNC0(traceout, mark);
	if (trace_flags & TRACE_QUOTE)
		FUNC1(traceout, "%s", rquote);
	FUNC1(traceout, "\n");
}