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
 int PSL_EE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ cold ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void *dummy)
{

	/*
	 * Now that we're guaranteed to have a PIC driver (or we'll never
	 * have one), program it with all the previously setup interrupts.
	 */
	FUNC3();

	/* Enable external interrupts. */
	FUNC2(FUNC1() | PSL_EE);

	FUNC0();
	cold = 0;
}