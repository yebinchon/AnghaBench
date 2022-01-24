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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_buffer_object {struct ttm_bo_global* glob; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*,int,int) ; 
 int FUNC5 (struct ttm_buffer_object*,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct ttm_buffer_object *bo,
			    bool interruptible, uint32_t sequence)
{
	struct ttm_bo_global *glob = bo->glob;
	int put_count, ret;

	FUNC1(&glob->lru_lock);
	ret = FUNC5(bo, interruptible, sequence);
	if (FUNC0(!ret)) {
		put_count = FUNC3(bo);
		FUNC2(&glob->lru_lock);
		FUNC4(bo, put_count, true);
	} else
		FUNC2(&glob->lru_lock);
	return ret;
}