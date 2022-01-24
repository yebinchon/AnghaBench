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
struct ttm_buffer_object {unsigned long num_pages; TYPE_1__* vm_node; } ;
struct ttm_bo_device {int /*<<< orphan*/  addr_space_rb; } ;
struct TYPE_2__ {unsigned long start; } ;

/* Variables and functions */
 struct ttm_buffer_object* FUNC0 (struct ttm_buffer_object*,int /*<<< orphan*/ ) ; 
 struct ttm_buffer_object* FUNC1 (struct ttm_buffer_object*,int /*<<< orphan*/ ) ; 
 struct ttm_buffer_object* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  vm_rb ; 

__attribute__((used)) static struct ttm_buffer_object *FUNC4(struct ttm_bo_device *bdev,
						     unsigned long page_start,
						     unsigned long num_pages)
{
	unsigned long cur_offset;
	struct ttm_buffer_object *bo;
	struct ttm_buffer_object *best_bo = NULL;

	bo = FUNC2(&bdev->addr_space_rb);
	while (bo != NULL) {
		cur_offset = bo->vm_node->start;
		if (page_start >= cur_offset) {
			best_bo = bo;
			if (page_start == cur_offset)
				break;
			bo = FUNC1(bo, vm_rb);
		} else
			bo = FUNC0(bo, vm_rb);
	}

	if (FUNC3(best_bo == NULL))
		return NULL;

	if (FUNC3((best_bo->vm_node->start + best_bo->num_pages) <
		     (page_start + num_pages)))
		return NULL;

	return best_bo;
}