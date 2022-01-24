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
typedef  scalar_t__ uint32_t ;
struct bcma_devinfo {int /*<<< orphan*/ * res_agent; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_DMP_RESETCTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int FUNC1 (int /*<<< orphan*/ ,struct bcma_devinfo*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC4(device_t child, struct bcma_devinfo *dinfo, uint32_t value)
{
	uint32_t rst;

	if (dinfo->res_agent == NULL)
		return (ENODEV);

	/* Already in requested reset state? */
	rst = FUNC2(dinfo->res_agent, BCMA_DMP_RESETCTRL);
	if (rst == value)
		return (0);

	FUNC3(dinfo->res_agent, BCMA_DMP_RESETCTRL, value);
	FUNC2(dinfo->res_agent, BCMA_DMP_RESETCTRL); /* read-back */
	FUNC0(10);

	return (FUNC1(child, dinfo));
}