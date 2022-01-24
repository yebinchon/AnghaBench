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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bhnd_resource {int dummy; } ;
struct bcma_devinfo {struct bhnd_resource* res_agent; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_DMP_IOCTRL ; 
 int BCMA_DMP_IOCTRL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC1 (struct bhnd_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_resource*,int /*<<< orphan*/ ,int) ; 
 struct bcma_devinfo* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, uint16_t value, uint16_t mask)
{
	struct bcma_devinfo	*dinfo;
	struct bhnd_resource	*r;
	uint32_t		 ioctl;

	if (FUNC4(child) != dev)
		return (EINVAL);

	dinfo = FUNC3(child);
	if ((r = dinfo->res_agent) == NULL)
		return (ENODEV);

	/* Write new value */
	ioctl = FUNC1(r, BCMA_DMP_IOCTRL);
	ioctl &= ~(BCMA_DMP_IOCTRL_MASK & mask);
	ioctl |= (value & mask);

	FUNC2(r, BCMA_DMP_IOCTRL, ioctl);

	/* Perform read-back and wait for completion */
	FUNC1(r, BCMA_DMP_IOCTRL);
	FUNC0(10);

	return (0);
}