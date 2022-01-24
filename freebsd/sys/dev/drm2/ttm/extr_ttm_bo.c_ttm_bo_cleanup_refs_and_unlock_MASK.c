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
struct ttm_buffer_object {int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  reserved; int /*<<< orphan*/  sync_obj; struct ttm_bo_global* glob; struct ttm_bo_device* bdev; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;
struct ttm_bo_driver {int (* sync_obj_wait ) (void*,int,int) ;int /*<<< orphan*/  (* sync_obj_unref ) (void**) ;void* (* sync_obj_ref ) (int /*<<< orphan*/ ) ;} ;
struct ttm_bo_device {int /*<<< orphan*/  fence_lock; struct ttm_bo_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (void**) ; 
 int /*<<< orphan*/  FUNC8 (struct ttm_buffer_object*) ; 
 int FUNC9 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_buffer_object*,int,int) ; 
 int FUNC11 (struct ttm_buffer_object*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ttm_buffer_object*,int,int,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ttm_buffer_object*) ; 

__attribute__((used)) static int FUNC15(struct ttm_buffer_object *bo,
					  bool interruptible,
					  bool no_wait_gpu)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_bo_driver *driver = bdev->driver;
	struct ttm_bo_global *glob = bo->glob;
	int put_count;
	int ret;

	FUNC3(&bdev->fence_lock);
	ret = FUNC12(bo, false, false, true);

	if (ret && !no_wait_gpu) {
		void *sync_obj;

		/*
		 * Take a reference to the fence and unreserve,
		 * at this point the buffer should be dead, so
		 * no new sync objects can be attached.
		 */
		sync_obj = driver->sync_obj_ref(bo->sync_obj);
		FUNC4(&bdev->fence_lock);

		FUNC0(&bo->reserved, 0);
		FUNC14(bo);
		FUNC4(&glob->lru_lock);

		ret = driver->sync_obj_wait(sync_obj, false, interruptible);
		driver->sync_obj_unref(&sync_obj);
		if (ret)
			return ret;

		/*
		 * remove sync_obj with ttm_bo_wait, the wait should be
		 * finished, and no new wait object should have been added.
		 */
		FUNC3(&bdev->fence_lock);
		ret = FUNC12(bo, false, false, true);
		FUNC4(&bdev->fence_lock);
		if (ret)
			return ret;

		FUNC3(&glob->lru_lock);
		ret = FUNC11(bo, false, true, false, 0);

		/*
		 * We raced, and lost, someone else holds the reservation now,
		 * and is probably busy in ttm_bo_cleanup_memtype_use.
		 *
		 * Even if it's not the case, because we finished waiting any
		 * delayed destruction would succeed, so just return success
		 * here.
		 */
		if (ret) {
			FUNC4(&glob->lru_lock);
			return 0;
		}
	} else
		FUNC4(&bdev->fence_lock);

	if (ret || FUNC13(FUNC2(&bo->ddestroy))) {
		FUNC0(&bo->reserved, 0);
		FUNC14(bo);
		FUNC4(&glob->lru_lock);
		return ret;
	}

	put_count = FUNC9(bo);
	FUNC1(&bo->ddestroy);
	++put_count;

	FUNC4(&glob->lru_lock);
	FUNC8(bo);

	FUNC10(bo, put_count, true);

	return 0;
}