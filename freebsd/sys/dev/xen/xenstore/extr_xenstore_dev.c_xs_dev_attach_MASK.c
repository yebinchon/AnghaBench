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
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MAKEDEV_ETERNAL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 struct cdev* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  xs_dev_cdevsw ; 

__attribute__((used)) static int
FUNC1(device_t dev)
{
	struct cdev *xs_cdev;

	xs_cdev = FUNC0(MAKEDEV_ETERNAL, &xs_dev_cdevsw, 0, NULL,
	    UID_ROOT, GID_WHEEL, 0400, "xen/xenstore");
	if (xs_cdev == NULL)
		return (EINVAL);

	return (0);
}