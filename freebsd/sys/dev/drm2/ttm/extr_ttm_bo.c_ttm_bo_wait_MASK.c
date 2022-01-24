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
struct ttm_buffer_object {void* sync_obj; int /*<<< orphan*/  priv_flags; struct ttm_bo_device* bdev; } ;
struct ttm_bo_driver {int (* sync_obj_wait ) (void*,int,int) ;int /*<<< orphan*/  (* sync_obj_unref ) (void**) ;void* (* sync_obj_ref ) (void*) ;scalar_t__ (* sync_obj_signaled ) (void*) ;} ;
struct ttm_bo_device {int /*<<< orphan*/  fence_lock; struct ttm_bo_driver* driver; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  TTM_BO_PRIV_FLAG_MOVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 void* FUNC6 (void*) ; 
 int FUNC7 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (void**) ; 
 int /*<<< orphan*/  FUNC10 (void**) ; 
 int /*<<< orphan*/  FUNC11 (void**) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct ttm_buffer_object *bo,
		bool lazy, bool interruptible, bool no_wait)
{
	struct ttm_bo_driver *driver = bo->bdev->driver;
	struct ttm_bo_device *bdev = bo->bdev;
	void *sync_obj;
	int ret = 0;

	if (FUNC1(bo->sync_obj == NULL))
		return 0;

	while (bo->sync_obj) {

		if (driver->sync_obj_signaled(bo->sync_obj)) {
			void *tmp_obj = bo->sync_obj;
			bo->sync_obj = NULL;
			FUNC0(TTM_BO_PRIV_FLAG_MOVING, &bo->priv_flags);
			FUNC3(&bdev->fence_lock);
			driver->sync_obj_unref(&tmp_obj);
			FUNC2(&bdev->fence_lock);
			continue;
		}

		if (no_wait)
			return -EBUSY;

		sync_obj = driver->sync_obj_ref(bo->sync_obj);
		FUNC3(&bdev->fence_lock);
		ret = driver->sync_obj_wait(sync_obj,
					    lazy, interruptible);
		if (FUNC12(ret != 0)) {
			driver->sync_obj_unref(&sync_obj);
			FUNC2(&bdev->fence_lock);
			return ret;
		}
		FUNC2(&bdev->fence_lock);
		if (FUNC1(bo->sync_obj == sync_obj)) {
			void *tmp_obj = bo->sync_obj;
			bo->sync_obj = NULL;
			FUNC0(TTM_BO_PRIV_FLAG_MOVING,
				  &bo->priv_flags);
			FUNC3(&bdev->fence_lock);
			driver->sync_obj_unref(&sync_obj);
			driver->sync_obj_unref(&tmp_obj);
			FUNC2(&bdev->fence_lock);
		} else {
			FUNC3(&bdev->fence_lock);
			driver->sync_obj_unref(&sync_obj);
			FUNC2(&bdev->fence_lock);
		}
	}
	return 0;
}