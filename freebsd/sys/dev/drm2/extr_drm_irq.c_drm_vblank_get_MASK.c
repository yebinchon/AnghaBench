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
struct drm_device {int* vblank_enabled; int /*<<< orphan*/  vbl_lock; int /*<<< orphan*/ * vblank_refcount; int /*<<< orphan*/  vblank_time_lock; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* enable_vblank ) (struct drm_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EINVAL ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_device*,int) ; 

int FUNC7(struct drm_device *dev, int crtc)
{
	int ret = 0;

	FUNC4(&dev->vbl_lock);
	/* Going from 0->1 means we have to enable interrupts again */
	if (FUNC1(1, &dev->vblank_refcount[crtc]) == 1) {
		FUNC4(&dev->vblank_time_lock);
		if (!dev->vblank_enabled[crtc]) {
			/* Enable vblank irqs under vblank_time_lock protection.
			 * All vblank count & timestamp updates are held off
			 * until we are done reinitializing master counter and
			 * timestamps. Filtercode in drm_handle_vblank() will
			 * prevent double-accounting of same vblank interval.
			 */
			ret = dev->driver->enable_vblank(dev, crtc);
			FUNC0("enabling vblank on crtc %d, ret: %d\n",
				  crtc, ret);
			if (ret)
				FUNC2(&dev->vblank_refcount[crtc]);
			else {
				dev->vblank_enabled[crtc] = 1;
				FUNC3(dev, crtc);
			}
		}
		FUNC5(&dev->vblank_time_lock);
	} else {
		if (!dev->vblank_enabled[crtc]) {
			FUNC2(&dev->vblank_refcount[crtc]);
			ret = -EINVAL;
		}
	}
	FUNC5(&dev->vbl_lock);

	return ret;
}