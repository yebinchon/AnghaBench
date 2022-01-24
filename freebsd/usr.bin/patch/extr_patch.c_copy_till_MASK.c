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
typedef  scalar_t__ LINENUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ last_frozen_line ; 
 int /*<<< orphan*/  last_line_missing_eol ; 

__attribute__((used)) static void
FUNC2(LINENUM lastline, bool endoffile)
{
	if (last_frozen_line > lastline)
		FUNC1("misordered hunks! output would be garbled\n");
	while (last_frozen_line < lastline) {
		if (++last_frozen_line == lastline && endoffile)
			FUNC0(last_frozen_line, !last_line_missing_eol);
		else
			FUNC0(last_frozen_line, true);
	}
}