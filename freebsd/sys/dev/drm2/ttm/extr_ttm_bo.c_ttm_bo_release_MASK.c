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
struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_2__ {size_t mem_type; } ;
struct ttm_buffer_object {int /*<<< orphan*/  list_kref; int /*<<< orphan*/ * vm_node; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int /*<<< orphan*/  vm_lock; int /*<<< orphan*/  addr_space_rb; struct ttm_mem_type_manager* man; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  ttm_bo_device_buffer_objects ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_mem_type_manager*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_mem_type_manager*) ; 

__attribute__((used)) static void FUNC11(struct ttm_buffer_object *bo)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_mem_type_manager *man = &bdev->man[bo->mem.mem_type];

	FUNC4(&bdev->vm_lock);
	if (FUNC2(bo->vm_node != NULL)) {
		FUNC0(ttm_bo_device_buffer_objects,
		    &bdev->addr_space_rb, bo);
		FUNC1(bo->vm_node);
		bo->vm_node = NULL;
	}
	FUNC5(&bdev->vm_lock);
	FUNC9(man, false);
	FUNC8(bo);
	FUNC10(man);
	FUNC6(bo);
	if (FUNC3(&bo->list_kref))
		FUNC7(bo);
}