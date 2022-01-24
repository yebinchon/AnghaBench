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
struct drm_device {int* vblank_inmodeset; int vblank_disable_allowed; int /*<<< orphan*/  vbl_lock; int /*<<< orphan*/  num_crtcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_device *dev, int crtc)
{
	/* vblank is not initialized (IRQ not installed ?), or has been freed */
	if (!dev->num_crtcs)
		return;

	if (dev->vblank_inmodeset[crtc]) {
		FUNC1(&dev->vbl_lock);
		dev->vblank_disable_allowed = 1;
		FUNC2(&dev->vbl_lock);

		if (dev->vblank_inmodeset[crtc] & 0x2)
			FUNC0(dev, crtc);

		dev->vblank_inmodeset[crtc] = 0;
	}
}