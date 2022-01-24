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
struct drm_minor {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  open_count; int /*<<< orphan*/  dev; int /*<<< orphan*/ * counts; } ;
struct cdev {struct drm_minor* si_drv1; } ;
typedef  int /*<<< orphan*/  DRM_STRUCTPROC ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  Giant ; 
 size_t _DRM_STAT_OPENS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_global_mutex ; 
 int FUNC2 (struct cdev*,int,int,int /*<<< orphan*/ *,struct drm_device*) ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct cdev *kdev, int flags, int fmt, DRM_STRUCTPROC *p)
{
	struct drm_device *dev = NULL;
	struct drm_minor *minor;
	int retcode = 0;
	int need_setup = 0;

	minor = kdev->si_drv1;
	if (!minor)
		return ENODEV;

	if (!(dev = minor->dev))
		return ENODEV;

	FUNC6(&drm_global_mutex);

	/*
	 * FIXME Linux<->FreeBSD: On Linux, counter updated outside
	 * global mutex.
	 */
	if (!dev->open_count++)
		need_setup = 1;

	retcode = FUNC2(kdev, flags, fmt, p, dev);
	if (retcode) {
		FUNC7(&drm_global_mutex);
		return (-retcode);
	}
	FUNC0(&dev->counts[_DRM_STAT_OPENS]);
	if (need_setup) {
		retcode = FUNC3(dev);
		if (retcode)
			goto err_undo;
	}
	FUNC7(&drm_global_mutex);
	return 0;

err_undo:
	FUNC4(&Giant); /* FIXME: Giant required? */
	FUNC1(dev->dev);
	FUNC5(&Giant);
	dev->open_count--;
	FUNC7(&drm_global_mutex);
	return -retcode;
}