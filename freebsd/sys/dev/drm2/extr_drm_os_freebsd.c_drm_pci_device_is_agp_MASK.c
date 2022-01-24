#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* device_is_agp ) (struct drm_device*) ;} ;

/* Variables and functions */
 int DRM_MIGHT_BE_AGP ; 
 int /*<<< orphan*/  PCIY_AGP ; 
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_device*) ; 

int
FUNC2(struct drm_device *dev)
{
	if (dev->driver->device_is_agp != NULL) {
		int ret;

		/* device_is_agp returns a tristate, 0 = not AGP, 1 = definitely
		 * AGP, 2 = fall back to PCI capability
		 */
		ret = (*dev->driver->device_is_agp)(dev);
		if (ret != DRM_MIGHT_BE_AGP)
			return ret;
	}

	return (FUNC0(dev, PCIY_AGP));
}