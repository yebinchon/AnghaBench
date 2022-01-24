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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 scalar_t__ using_plan_a ; 
 scalar_t__ verbose ; 

void
FUNC3(const char *filename)
{
	if (!FUNC0(filename))
		FUNC1(filename);
	if (verbose) {
		FUNC2("Patching file %s using Plan %s...\n", filename,
		    (using_plan_a ? "A" : "B"));
	}
}