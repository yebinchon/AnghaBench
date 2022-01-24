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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  min_freq ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(driver_t *driver, device_t parent)
{
	phandle_t node;
	uint32_t min_freq;

	node = FUNC4(parent);
	if (FUNC1(node, "min-clock-frequency", &min_freq, sizeof(min_freq)) == -1)
		return;

	/* Make sure we're not being doubly invoked. */
	if (FUNC2(parent, "pmufreq", -1) != NULL)
		return;

	/*
	 * We attach a child for every CPU since settings need to
	 * be performed on every CPU in the SMP case.
	 */
	if (FUNC0(parent, 10, "pmufreq", -1) == NULL)
		FUNC3(parent, "add pmufreq child failed\n");
}