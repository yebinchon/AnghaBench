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
typedef  int u_int64_t ;
struct ttm_mem_zone {char* name; scalar_t__ max_mem; } ;
struct ttm_mem_global {int num_zones; TYPE_1__* zone_kernel; struct ttm_mem_zone** zones; int /*<<< orphan*/  kobj_ref; int /*<<< orphan*/  work; int /*<<< orphan*/  swap_queue; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int max_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PVM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ttm_mem_global*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int physmem ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_mem_global*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_mem_global*) ; 
 int FUNC8 (struct ttm_mem_global*,int) ; 
 int FUNC9 (struct ttm_mem_global*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_mem_global*,int) ; 
 int /*<<< orphan*/  ttm_shrink_work ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct ttm_mem_global *glob)
{
	u_int64_t mem;
	int ret;
	int i;
	struct ttm_mem_zone *zone;

	FUNC1(&glob->lock, "ttmgz", NULL, MTX_DEF);
	glob->swap_queue = FUNC4("ttm_swap", M_WAITOK,
	    taskqueue_thread_enqueue, &glob->swap_queue);
	FUNC5(&glob->swap_queue, 1, PVM, "ttm swap");
	FUNC0(&glob->work, 0, ttm_shrink_work, glob);

	FUNC3(&glob->kobj_ref, 1);

	mem = physmem * PAGE_SIZE;

	ret = FUNC9(glob, mem);
	if (FUNC11(ret != 0))
		goto out_no_zone;
	ret = FUNC8(glob, mem);
	if (FUNC11(ret != 0))
		goto out_no_zone;
	for (i = 0; i < glob->num_zones; ++i) {
		zone = glob->zones[i];
		FUNC2("[TTM] Zone %7s: Available graphics memory: %llu kiB\n",
			zone->name, (unsigned long long)zone->max_mem >> 10);
	}
	FUNC10(glob, glob->zone_kernel->max_mem/(2*PAGE_SIZE));
	FUNC6(glob, glob->zone_kernel->max_mem/(2*PAGE_SIZE));
	return 0;
out_no_zone:
	FUNC7(glob);
	return ret;
}