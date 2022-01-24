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
typedef  int /*<<< orphan*/  u32 ;
struct timeval {int dummy; } ;
struct drm_device {int num_crtcs; scalar_t__ vblank_disable_allowed; int /*<<< orphan*/ * vblank_refcount; int /*<<< orphan*/ * _vblank_count; TYPE_1__* driver; void* _vblank_time; void* vblank_inmodeset; void* last_vblank_wait; void* last_vblank; void* vblank_enabled; int /*<<< orphan*/  vblank_time_lock; int /*<<< orphan*/  vbl_lock; int /*<<< orphan*/  vblank_disable_callout; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_2__ {scalar_t__ get_vblank_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MEM_VBLANK ; 
 int DRM_VBLANKTIME_RBSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct drm_device *dev, int num_crtcs)
{
	int i, ret = -ENOMEM;

	FUNC2(&dev->vblank_disable_callout, 1);
	FUNC5(&dev->vbl_lock, "drmvbl", NULL, MTX_DEF);
	FUNC5(&dev->vblank_time_lock, "drmvtl", NULL, MTX_DEF);

	dev->num_crtcs = num_crtcs;

	dev->_vblank_count = FUNC4(sizeof(atomic_t) * num_crtcs,
	    DRM_MEM_VBLANK, M_NOWAIT);
	if (!dev->_vblank_count)
		goto err;

	dev->vblank_refcount = FUNC4(sizeof(atomic_t) * num_crtcs,
	    DRM_MEM_VBLANK, M_NOWAIT);
	if (!dev->vblank_refcount)
		goto err;

	dev->vblank_enabled = FUNC4(num_crtcs * sizeof(int),
	    DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
	if (!dev->vblank_enabled)
		goto err;

	dev->last_vblank = FUNC4(num_crtcs * sizeof(u32),
	    DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
	if (!dev->last_vblank)
		goto err;

	dev->last_vblank_wait = FUNC4(num_crtcs * sizeof(u32),
	    DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
	if (!dev->last_vblank_wait)
		goto err;

	dev->vblank_inmodeset = FUNC4(num_crtcs * sizeof(int),
	    DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
	if (!dev->vblank_inmodeset)
		goto err;

	dev->_vblank_time = FUNC4(num_crtcs * DRM_VBLANKTIME_RBSIZE *
	    sizeof(struct timeval), DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
	if (!dev->_vblank_time)
		goto err;

	FUNC0("Supports vblank timestamp caching Rev 1 (10.10.2010).\n");

	/* Driver specific high-precision vblank timestamping supported? */
	if (dev->driver->get_vblank_timestamp)
		FUNC0("Driver supports precise vblank timestamp query.\n");
	else
		FUNC0("No driver support for vblank timestamp query.\n");

	/* Zero per-crtc vblank stuff */
	for (i = 0; i < num_crtcs; i++) {
		FUNC1(&dev->_vblank_count[i], 0);
		FUNC1(&dev->vblank_refcount[i], 0);
	}

	dev->vblank_disable_allowed = 0;
	return 0;

err:
	FUNC3(dev);
	return ret;
}