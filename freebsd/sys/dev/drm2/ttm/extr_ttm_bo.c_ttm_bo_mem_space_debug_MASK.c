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
struct ttm_placement {int num_placement; int* placement; } ;
struct TYPE_2__ {int size; int /*<<< orphan*/  num_pages; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; TYPE_1__ mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int*) ; 

__attribute__((used)) static void FUNC3(struct ttm_buffer_object *bo,
					struct ttm_placement *placement)
{
	int i, ret, mem_type;

	FUNC0("No space for %p (%lu pages, %luK, %luM)\n",
	       bo, bo->mem.num_pages, bo->mem.size >> 10,
	       bo->mem.size >> 20);
	for (i = 0; i < placement->num_placement; i++) {
		ret = FUNC2(placement->placement[i],
						&mem_type);
		if (ret)
			return;
		FUNC0("  placement[%d]=0x%08X (%d)\n",
		       i, placement->placement[i], mem_type);
		FUNC1(bo->bdev, mem_type);
	}
}