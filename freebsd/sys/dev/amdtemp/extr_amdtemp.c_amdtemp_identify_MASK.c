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
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4(driver_t *driver, device_t parent)
{
	device_t child;

	/* Make sure we're not being doubly invoked. */
	if (FUNC2(parent, "amdtemp", -1) != NULL)
		return;

	if (FUNC0(parent, NULL)) {
		child = FUNC1(parent, "amdtemp", -1);
		if (child == NULL)
			FUNC3(parent, "add amdtemp child failed\n");
	}
}