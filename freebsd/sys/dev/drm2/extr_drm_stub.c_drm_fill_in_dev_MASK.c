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
struct drm_driver {int driver_features; } ;
struct drm_device {int counters; struct drm_driver* driver; int /*<<< orphan*/ * counts; int /*<<< orphan*/ * types; int /*<<< orphan*/  map_hash; int /*<<< orphan*/  pcir_lock; int /*<<< orphan*/  ctxlist_mutex; int /*<<< orphan*/  dev_struct_lock; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  count_lock; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  vblank_event_list; int /*<<< orphan*/  maplist; int /*<<< orphan*/  ctxlist; int /*<<< orphan*/  filelist; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int DRIVER_GEM ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  _DRM_STAT_CLOSES ; 
 int /*<<< orphan*/  _DRM_STAT_IOCTLS ; 
 int /*<<< orphan*/  _DRM_STAT_LOCK ; 
 int /*<<< orphan*/  _DRM_STAT_LOCKS ; 
 int /*<<< orphan*/  _DRM_STAT_OPENS ; 
 int /*<<< orphan*/  _DRM_STAT_UNLOCKS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

int FUNC12(struct drm_device *dev,
			   struct drm_driver *driver)
{
	int retcode, i;

	FUNC2(&dev->filelist);
	FUNC2(&dev->ctxlist);
	FUNC2(&dev->maplist);
	FUNC2(&dev->vblank_event_list);

	FUNC10(&dev->irq_lock, "drmirq", NULL, MTX_DEF);
	FUNC10(&dev->count_lock, "drmcount", NULL, MTX_DEF);
	FUNC10(&dev->event_lock, "drmev", NULL, MTX_DEF);
	FUNC11(&dev->dev_struct_lock, "drmslk");
	FUNC10(&dev->ctxlist_mutex, "drmctxlist", NULL, MTX_DEF);
	FUNC10(&dev->pcir_lock, "drmpcir", NULL, MTX_DEF);

	if (FUNC7(&dev->map_hash, 12)) {
		return -ENOMEM;
	}

	/* the DRM has 6 basic counters */
	dev->counters = 6;
	dev->types[0] = _DRM_STAT_LOCK;
	dev->types[1] = _DRM_STAT_OPENS;
	dev->types[2] = _DRM_STAT_CLOSES;
	dev->types[3] = _DRM_STAT_IOCTLS;
	dev->types[4] = _DRM_STAT_LOCKS;
	dev->types[5] = _DRM_STAT_UNLOCKS;

	/*
	 * FIXME Linux<->FreeBSD: this is done in drm_setup() on Linux.
	 */
	for (i = 0; i < FUNC0(dev->counts); i++)
		FUNC3(&dev->counts[i], 0);

	dev->driver = driver;

	retcode = FUNC8(dev);
	if (retcode)
		goto error_out_unreg;



	retcode = FUNC5(dev);
	if (retcode) {
		FUNC1("Cannot allocate memory for context bitmap.\n");
		goto error_out_unreg;
	}

	if (driver->driver_features & DRIVER_GEM) {
		retcode = FUNC6(dev);
		if (retcode) {
			FUNC1("Cannot initialize graphics execution "
				  "manager (GEM)\n");
			goto error_out_unreg;
		}
	}

	retcode = FUNC9(dev);
	if (retcode != 0) {
		FUNC1("Failed to create hw.dri sysctl entry: %d\n",
		    retcode);
	}

	return 0;

      error_out_unreg:
	FUNC4(dev);
	return retcode;
}