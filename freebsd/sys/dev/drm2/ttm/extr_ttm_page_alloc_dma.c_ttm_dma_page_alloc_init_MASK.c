#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_global {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {unsigned int max_size; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  small; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; TYPE_1__ options; int /*<<< orphan*/  pools; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUM_PAGES_TO_ALLOC ; 
 int /*<<< orphan*/  SMALL_ALLOCATION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* _manager ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  ttm_pool_kobj_type ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct ttm_mem_global *glob, unsigned max_pages)
{
	int ret = -ENOMEM;

	FUNC1(_manager);

	FUNC6("Initializing DMA pool allocator\n");

	_manager = FUNC4(sizeof(*_manager), GFP_KERNEL);
	if (!_manager)
		goto err;

	FUNC5(&_manager->lock);
	FUNC0(&_manager->pools);

	_manager->options.max_size = max_pages;
	_manager->options.small = SMALL_ALLOCATION;
	_manager->options.alloc_size = NUM_PAGES_TO_ALLOC;

	/* This takes care of auto-freeing the _manager */
	ret = FUNC2(&_manager->kobj, &ttm_pool_kobj_type,
				   &glob->kobj, "dma_pool");
	if (FUNC8(ret != 0)) {
		FUNC3(&_manager->kobj);
		goto err;
	}
	FUNC7(_manager);
	return 0;
err:
	return ret;
}