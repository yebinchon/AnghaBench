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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
#define  MPC7447A 129 
#define  MPC7448 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 

__attribute__((used)) static void
FUNC4(driver_t *driver, device_t parent)
{
	uint16_t vers;
	vers = FUNC3() >> 16;

	/* Check for an MPC 7447A or 7448 CPU */
	switch (vers) {
		case MPC7447A:
		case MPC7448:
			break;
		default:
			return;
	}

	/* Make sure we're not being doubly invoked. */
	if (FUNC1(parent, "dfs", -1) != NULL)
		return;

	/*
	 * We attach a child for every CPU since settings need to
	 * be performed on every CPU in the SMP case.
	 */
	if (FUNC0(parent, 10, "dfs", -1) == NULL)
		FUNC2(parent, "add dfs child failed\n");
}