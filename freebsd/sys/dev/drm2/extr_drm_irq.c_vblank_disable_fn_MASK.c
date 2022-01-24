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
struct drm_device {int num_crtcs; int /*<<< orphan*/  vbl_lock; scalar_t__* vblank_enabled; int /*<<< orphan*/ * vblank_refcount; int /*<<< orphan*/  vblank_disable_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct drm_device *dev = (struct drm_device *)arg;
	int i;

	if (!dev->vblank_disable_allowed)
		return;

	for (i = 0; i < dev->num_crtcs; i++) {
		FUNC2(&dev->vbl_lock);
		if (FUNC1(&dev->vblank_refcount[i]) == 0 &&
		    dev->vblank_enabled[i]) {
			FUNC0("disabling vblank on crtc %d\n", i);
			FUNC4(dev, i);
		}
		FUNC3(&dev->vbl_lock);
	}
}