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
struct drm_gem_object {int /*<<< orphan*/  name; } ;
struct drm_gem_flink {int /*<<< orphan*/  name; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  object_names; TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;

/* Variables and functions */
 int DRIVER_GEM ; 
 int EALREADY ; 
 int ENODEV ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 

int
FUNC3(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	struct drm_gem_flink *args = data;
	struct drm_gem_object *obj;
	int ret;

	if (!(dev->driver->driver_features & DRIVER_GEM))
		return -ENODEV;

	obj = FUNC1(dev, file_priv, args->handle);
	if (obj == NULL)
		return -ENOENT;

	ret = FUNC0(&dev->object_names, obj, &obj->name);
	if (ret != 0) {
		if (ret == -EALREADY)
			ret = 0;
		FUNC2(obj);
	}
	if (ret == 0)
		args->name = obj->name;
	return ret;
}