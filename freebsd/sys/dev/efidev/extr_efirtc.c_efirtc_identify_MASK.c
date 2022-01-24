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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4(driver_t *driver, device_t parent)
{

	/* Don't add the driver unless we have working runtime services. */
	if (FUNC3() != 0)
		return;
	if (FUNC1(parent, "efirtc", -1) != NULL)
		return;
	if (FUNC0(parent, 0, "efirtc", -1) == NULL)
		FUNC2(parent, "add child failed\n");
}