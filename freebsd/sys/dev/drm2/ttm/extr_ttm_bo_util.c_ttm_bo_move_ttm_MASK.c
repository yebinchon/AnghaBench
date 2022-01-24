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
struct ttm_tt {int dummy; } ;
struct ttm_mem_reg {scalar_t__ mem_type; int /*<<< orphan*/ * mm_node; int /*<<< orphan*/  placement; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; struct ttm_tt* ttm; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_PL_FLAG_SYSTEM ; 
 int /*<<< orphan*/  TTM_PL_MASK_MEM ; 
 scalar_t__ TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ttm_tt*,struct ttm_mem_reg*) ; 
 int FUNC3 (struct ttm_tt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_tt*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct ttm_buffer_object *bo,
		    bool evict,
		    bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
	struct ttm_tt *ttm = bo->ttm;
	struct ttm_mem_reg *old_mem = &bo->mem;
	int ret;

	if (old_mem->mem_type != TTM_PL_SYSTEM) {
		FUNC4(ttm);
		FUNC0(bo);
		FUNC1(&old_mem->placement, TTM_PL_FLAG_SYSTEM,
				TTM_PL_MASK_MEM);
		old_mem->mem_type = TTM_PL_SYSTEM;
	}

	ret = FUNC3(ttm, new_mem->placement);
	if (FUNC5(ret != 0))
		return ret;

	if (new_mem->mem_type != TTM_PL_SYSTEM) {
		ret = FUNC2(ttm, new_mem);
		if (FUNC5(ret != 0))
			return ret;
	}

	*old_mem = *new_mem;
	new_mem->mm_node = NULL;

	return 0;
}