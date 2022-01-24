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
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct drm_gem_object {int on_map; TYPE_1__ map_list; struct drm_device* dev; } ;
struct drm_gem_mm {int /*<<< orphan*/  idxunr; int /*<<< orphan*/  offset_hash; } ;
struct drm_device {struct drm_gem_mm* mm_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct drm_gem_mm *mm = dev->mm_private;
	int ret;

	if (obj->on_map)
		return 0;

	obj->map_list.key = FUNC1(mm->idxunr);
	ret = FUNC2(&mm->offset_hash, &obj->map_list);
	if (ret) {
		FUNC0("failed to add to map hash\n");
		FUNC3(mm->idxunr, obj->map_list.key);
		return ret;
	}
	obj->on_map = true;

	return 0;
}