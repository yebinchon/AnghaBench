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
struct drm_driver {int driver_features; } ;
struct drm_device {int /*<<< orphan*/  pcir_lock; int /*<<< orphan*/  ctxlist_mutex; int /*<<< orphan*/  dev_struct_lock; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  count_lock; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  map_hash; TYPE_2__* agp; struct drm_driver* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  ai_aperture_size; int /*<<< orphan*/  ai_aperture_base; } ;
struct TYPE_4__ {scalar_t__ agp_mtrr; TYPE_1__ agp_info; } ;

/* Variables and functions */
 int DRIVER_GEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  DRM_MEM_AGPLISTS ; 
 int /*<<< orphan*/  DRM_MTRR_WC ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct drm_device *dev)
{
	struct drm_driver *driver;

	driver = dev->driver;

	FUNC7(dev);
	if (driver->driver_features & DRIVER_GEM)
		FUNC4(dev);
	FUNC3(dev);

	if (FUNC2(dev) && FUNC1(dev) &&
	    dev->agp && dev->agp->agp_mtrr >= 0) {
		int retval;
		retval = FUNC6(dev->agp->agp_mtrr,
				  dev->agp->agp_info.ai_aperture_base,
				  dev->agp->agp_info.ai_aperture_size,
				  DRM_MTRR_WC);
		FUNC0("mtrr_del=%d\n", retval);
	}
	FUNC8(dev->agp, DRM_MEM_AGPLISTS);
	dev->agp = NULL;

	FUNC5(&dev->map_hash);

	FUNC9(&dev->irq_lock);
	FUNC9(&dev->count_lock);
	FUNC9(&dev->event_lock);
	FUNC10(&dev->dev_struct_lock);
	FUNC9(&dev->ctxlist_mutex);
	FUNC9(&dev->pcir_lock);
}