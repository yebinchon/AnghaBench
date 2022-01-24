#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_1__* driver; TYPE_2__* sysctl; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* sysctl_cleanup ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_device *dev)
{
	int error;

	if (dev->sysctl == NULL)
		return (0);

	error = FUNC2(&dev->sysctl->ctx);
	FUNC0(dev->sysctl, DRM_MEM_DRIVER);
	dev->sysctl = NULL;
	if (dev->driver->sysctl_cleanup != NULL)
		dev->driver->sysctl_cleanup(dev);

	return (-error);
}