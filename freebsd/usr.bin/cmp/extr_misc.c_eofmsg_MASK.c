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
 int /*<<< orphan*/  DIFF_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sflag ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

void
FUNC2(const char *file)
{
	if (!sflag)
		FUNC1("EOF on %s", file);
	FUNC0(DIFF_EXIT);
}