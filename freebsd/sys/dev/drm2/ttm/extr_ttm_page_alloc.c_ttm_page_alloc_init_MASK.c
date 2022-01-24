#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_global {int dummy; } ;
struct TYPE_5__ {unsigned int max_size; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  small; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj_ref; TYPE_1__ options; int /*<<< orphan*/  uc_pool_dma32; int /*<<< orphan*/  wc_pool_dma32; int /*<<< orphan*/  uc_pool; int /*<<< orphan*/  wc_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TTM_POOLMGR ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NUM_PAGES_TO_ALLOC ; 
 int /*<<< orphan*/  SMALL_ALLOCATION ; 
 int /*<<< orphan*/  TTM_PAGE_FLAG_DMA32 ; 
 TYPE_2__* _manager ; 
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(struct ttm_mem_global *glob, unsigned max_pages)
{

	if (_manager != NULL)
		FUNC1("[TTM] manager != NULL\n");
	FUNC1("[TTM] Initializing pool allocator\n");

	_manager = FUNC0(sizeof(*_manager), M_TTM_POOLMGR, M_WAITOK | M_ZERO);

	FUNC3(&_manager->wc_pool, 0, "wc");
	FUNC3(&_manager->uc_pool, 0, "uc");
	FUNC3(&_manager->wc_pool_dma32,
	    TTM_PAGE_FLAG_DMA32, "wc dma");
	FUNC3(&_manager->uc_pool_dma32,
	    TTM_PAGE_FLAG_DMA32, "uc dma");

	_manager->options.max_size = max_pages;
	_manager->options.small = SMALL_ALLOCATION;
	_manager->options.alloc_size = NUM_PAGES_TO_ALLOC;

	FUNC2(&_manager->kobj_ref, 1);
	FUNC4(_manager);

	return 0;
}