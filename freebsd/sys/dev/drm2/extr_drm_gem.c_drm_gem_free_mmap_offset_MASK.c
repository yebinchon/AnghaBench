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
struct drm_hash_item {int /*<<< orphan*/  key; } ;
struct drm_gem_object {int on_map; struct drm_hash_item map_list; struct drm_device* dev; } ;
struct drm_gem_mm {int /*<<< orphan*/  idxunr; int /*<<< orphan*/  offset_hash; } ;
struct drm_device {struct drm_gem_mm* mm_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct drm_hash_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct drm_gem_mm *mm = dev->mm_private;
	struct drm_hash_item *list = &obj->map_list;

	if (!obj->on_map)
		return;

	FUNC0(&mm->offset_hash, list);
	FUNC1(mm->idxunr, list->key);
	obj->on_map = false;
}