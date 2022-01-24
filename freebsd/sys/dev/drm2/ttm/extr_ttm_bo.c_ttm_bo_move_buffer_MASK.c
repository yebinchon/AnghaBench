#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ttm_placement {int dummy; } ;
struct TYPE_4__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct ttm_mem_reg {int num_pages; int size; scalar_t__ mm_node; TYPE_2__ bus; int /*<<< orphan*/  page_alignment; } ;
struct TYPE_3__ {int /*<<< orphan*/  page_alignment; } ;
struct ttm_buffer_object {int num_pages; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int /*<<< orphan*/  fence_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ttm_buffer_object*,struct ttm_mem_reg*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC6 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,int,int) ; 
 int FUNC7 (struct ttm_buffer_object*,int,int,int) ; 

__attribute__((used)) static
int FUNC8(struct ttm_buffer_object *bo,
			struct ttm_placement *placement,
			bool interruptible,
			bool no_wait_gpu)
{
	int ret = 0;
	struct ttm_mem_reg mem;
	struct ttm_bo_device *bdev = bo->bdev;

	FUNC0(FUNC4(bo));

	/*
	 * FIXME: It's possible to pipeline buffer moves.
	 * Have the driver move function wait for idle when necessary,
	 * instead of doing it here.
	 */
	FUNC1(&bdev->fence_lock);
	ret = FUNC7(bo, false, interruptible, no_wait_gpu);
	FUNC2(&bdev->fence_lock);
	if (ret)
		return ret;
	mem.num_pages = bo->num_pages;
	mem.size = mem.num_pages << PAGE_SHIFT;
	mem.page_alignment = bo->mem.page_alignment;
	mem.bus.io_reserved_vm = false;
	mem.bus.io_reserved_count = 0;
	/*
	 * Determine where to move the buffer.
	 */
	ret = FUNC6(bo, placement, &mem,
			       interruptible, no_wait_gpu);
	if (ret)
		goto out_unlock;
	ret = FUNC3(bo, &mem, false,
				     interruptible, no_wait_gpu);
out_unlock:
	if (ret && mem.mm_node)
		FUNC5(bo, &mem);
	return ret;
}