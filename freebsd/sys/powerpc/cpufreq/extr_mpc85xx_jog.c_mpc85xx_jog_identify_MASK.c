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
struct ofw_compat_data {int dummy; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ofw_compat_data* FUNC3 () ; 

__attribute__((used)) static void
FUNC4(driver_t *driver, device_t parent)
{
	struct ofw_compat_data *compat;

	/* Make sure we're not being doubly invoked. */
	if (FUNC1(parent, "mpc85xx_jog", -1) != NULL)
		return;

	compat = FUNC3();
	if (compat == NULL)
		return;
	
	/*
	 * We attach a child for every CPU since settings need to
	 * be performed on every CPU in the SMP case.
	 */
	if (FUNC0(parent, 10, "jog", -1) == NULL)
		FUNC2(parent, "add jog child failed\n");
}