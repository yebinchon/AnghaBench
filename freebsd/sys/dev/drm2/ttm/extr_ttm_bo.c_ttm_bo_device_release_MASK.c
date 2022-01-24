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
struct ttm_mem_type_manager {int has_type; int use_type; int /*<<< orphan*/  lru; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; int /*<<< orphan*/  device_list_mutex; } ;
struct ttm_bo_device {int /*<<< orphan*/  vm_lock; int /*<<< orphan*/  addr_space_mm; struct ttm_mem_type_manager* man; int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  wq; int /*<<< orphan*/  device_list; struct ttm_bo_global* glob; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int TTM_NUM_MEM_TYPES ; 
 unsigned int TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 scalar_t__ FUNC15 (struct ttm_bo_device*,unsigned int) ; 
 scalar_t__ FUNC16 (struct ttm_bo_device*,int) ; 

int FUNC17(struct ttm_bo_device *bdev)
{
	int ret = 0;
	unsigned i = TTM_NUM_MEM_TYPES;
	struct ttm_mem_type_manager *man;
	struct ttm_bo_global *glob = bdev->glob;

	while (i--) {
		man = &bdev->man[i];
		if (man->has_type) {
			man->use_type = false;
			if ((i != TTM_PL_SYSTEM) && FUNC15(bdev, i)) {
				ret = -EBUSY;
				FUNC8("[TTM] DRM memory manager type %d is not clean\n",
				       i);
			}
			man->has_type = false;
		}
	}

	FUNC11(&glob->device_list_mutex);
	FUNC4(&bdev->device_list);
	FUNC12(&glob->device_list_mutex);

	if (FUNC13(taskqueue_thread, &bdev->wq, NULL))
		FUNC14(taskqueue_thread, &bdev->wq);

	while (FUNC16(bdev, true))
		;

	FUNC6(&glob->lru_lock);
	if (FUNC5(&bdev->ddestroy))
		FUNC1("Delayed destroy list was clean\n");

	if (FUNC5(&bdev->man[0].lru))
		FUNC1("Swap list was clean\n");
	FUNC7(&glob->lru_lock);

	FUNC0(FUNC2(&bdev->addr_space_mm));
	FUNC9(&bdev->vm_lock);
	FUNC3(&bdev->addr_space_mm);
	FUNC10(&bdev->vm_lock);

	return ret;
}