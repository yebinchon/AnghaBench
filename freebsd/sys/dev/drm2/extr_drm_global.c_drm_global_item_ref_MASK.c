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
struct drm_global_reference {size_t global_type; int (* init ) (struct drm_global_reference*) ;int /*<<< orphan*/ * object; int /*<<< orphan*/  size; } ;
struct drm_global_item {scalar_t__ refcount; int /*<<< orphan*/ * object; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DRM_GLOBAL ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct drm_global_item* glob ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_global_reference*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct drm_global_reference *ref)
{
	int ret;
	struct drm_global_item *item = &glob[ref->global_type];
	void *object;

	FUNC2(&item->mutex);
	if (item->refcount == 0) {
		item->object = FUNC0(ref->size, M_DRM_GLOBAL,
		    M_NOWAIT | M_ZERO);
		if (FUNC4(item->object == NULL)) {
			ret = -ENOMEM;
			goto out_err;
		}

		ref->object = item->object;
		ret = ref->init(ref);
		if (FUNC4(ret != 0))
			goto out_err;

	}
	++item->refcount;
	ref->object = item->object;
	object = item->object;
	FUNC3(&item->mutex);
	return 0;
out_err:
	FUNC3(&item->mutex);
	item->object = NULL;
	return ret;
}