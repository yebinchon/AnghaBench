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
struct drm_gem_object {int /*<<< orphan*/  vm_obj; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* gem_init_object ) (struct drm_gem_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (struct drm_device*,struct drm_gem_object*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

struct drm_gem_object *
FUNC5(struct drm_device *dev, size_t size)
{
	struct drm_gem_object *obj;

	obj = FUNC2(sizeof(*obj), DRM_MEM_DRIVER, M_NOWAIT | M_ZERO);
	if (!obj)
		goto free;

	if (FUNC0(dev, obj, size) != 0)
		goto free;

	if (dev->driver->gem_init_object != NULL &&
	    dev->driver->gem_init_object(obj) != 0) {
		goto dealloc;
	}
	return obj;
dealloc:
	FUNC4(obj->vm_obj);
free:
	FUNC1(obj, DRM_MEM_DRIVER);
	return NULL;
}