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
struct drm_gem_object {int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  object_names; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 

void FUNC2(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct drm_gem_object *obj1;

	if (obj->name) {
		obj1 = FUNC0(&dev->object_names, obj->name);
		obj->name = 0;
		FUNC1(obj1);
	}
}