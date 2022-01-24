#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_page_t ;
struct ttm_page_pool {scalar_t__ npages; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
typedef  enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_4__ {scalar_t__ max_size; } ;
struct TYPE_6__ {TYPE_1__ options; } ;
struct TYPE_5__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 unsigned int NUM_PAGES_TO_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* _manager ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__ plinks ; 
 struct ttm_page_pool* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_page_pool*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(vm_page_t *pages, unsigned npages, int flags,
			  enum ttm_caching_state cstate)
{
	struct ttm_page_pool *pool = FUNC3(flags, cstate);
	unsigned i;

	if (pool == NULL) {
		/* No pool for this memory type so free the pages */
		for (i = 0; i < npages; i++) {
			if (pages[i]) {
				FUNC5(pages[i]);
				pages[i] = NULL;
			}
		}
		return;
	}

	FUNC1(&pool->lock);
	for (i = 0; i < npages; i++) {
		if (pages[i]) {
			FUNC0(&pool->list, pages[i], plinks.q);
			pages[i] = NULL;
			pool->npages++;
		}
	}
	/* Check that we don't go over the pool limit */
	npages = 0;
	if (pool->npages > _manager->options.max_size) {
		npages = pool->npages - _manager->options.max_size;
		/* free at least NUM_PAGES_TO_ALLOC number of pages
		 * to reduce calls to set_memory_wb */
		if (npages < NUM_PAGES_TO_ALLOC)
			npages = NUM_PAGES_TO_ALLOC;
	}
	FUNC2(&pool->lock);
	if (npages)
		FUNC4(pool, npages);
}