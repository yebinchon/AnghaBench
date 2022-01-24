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
struct drm_gem_open {int /*<<< orphan*/  size; int /*<<< orphan*/  handle; int /*<<< orphan*/  name; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  object_names; TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;

/* Variables and functions */
 int DRIVER_GEM ; 
 int ENODEV ; 
 int ENOENT ; 
 int FUNC0 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*)) ; 
 scalar_t__ drm_gem_object_reference ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 

int
FUNC3(struct drm_device *dev, void *data,
		   struct drm_file *file_priv)
{
	struct drm_gem_open *args = data;
	struct drm_gem_object *obj;
	int ret;
	u32 handle;

	if (!(dev->driver->driver_features & DRIVER_GEM))
		return -ENODEV;

	obj = FUNC1(&dev->object_names, args->name,
	    (void (*)(void *))drm_gem_object_reference);
	if (!obj)
		return -ENOENT;

	ret = FUNC0(file_priv, obj, &handle);
	FUNC2(obj);
	if (ret)
		return ret;

	args->handle = handle;
	args->size = obj->size;

	return 0;
}