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
struct bhnd_resource {int dummy; } ;
struct bcma_devinfo {struct bhnd_resource* res_agent; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_DMP_RC_RESET ; 
 int BHND_IOCTL_CLK_EN ; 
 int BHND_IOCTL_CLK_FORCE ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (scalar_t__,struct bcma_devinfo*) ; 
 int FUNC1 (scalar_t__,struct bcma_devinfo*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int,int) ; 
 struct bcma_devinfo* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, uint16_t ioctl)
{
	struct bcma_devinfo	*dinfo;
	struct bhnd_resource	*r;
	uint16_t		 clkflags;
	int			 error;

	if (FUNC4(child) != dev)
		return (EINVAL);

	dinfo = FUNC3(child);

	/* We require exclusive control over BHND_IOCTL_CLK_(EN|FORCE) */
	clkflags = BHND_IOCTL_CLK_EN | BHND_IOCTL_CLK_FORCE;
	if (ioctl & clkflags)
		return (EINVAL);

	/* Can't suspend the core without access to the agent registers */
	if ((r = dinfo->res_agent) == NULL)
		return (ENODEV);

	/* Wait for any pending reset operations to clear */
	if ((error = FUNC0(child, dinfo)))
		return (error);

	/* Put core into reset (if not already in reset) */
	if ((error = FUNC1(child, dinfo, BCMA_DMP_RC_RESET)))
		return (error);

	/* Write core flags (and clear CLK_EN/CLK_FORCE) */
	if ((error = FUNC2(child, ioctl, ~clkflags)))
		return (error);

	return (0);
}