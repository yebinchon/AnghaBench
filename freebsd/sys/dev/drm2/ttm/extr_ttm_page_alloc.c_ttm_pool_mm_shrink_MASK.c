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
struct ttm_page_pool {int dummy; } ;
struct TYPE_2__ {struct ttm_page_pool* pools; } ;

/* Variables and functions */
 unsigned int NUM_POOLS ; 
 TYPE_1__* _manager ; 
 unsigned int FUNC0 (unsigned int*,int) ; 
 int FUNC1 (struct ttm_page_pool*,unsigned int) ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(void *arg)
{
	static unsigned int start_pool = 0;
	unsigned i;
	unsigned pool_offset = FUNC0(&start_pool, 1);
	struct ttm_page_pool *pool;
	int shrink_pages = 100; /* XXXKIB */

	pool_offset = pool_offset % NUM_POOLS;
	/* select start pool in round robin fashion */
	for (i = 0; i < NUM_POOLS; ++i) {
		unsigned nr_free = shrink_pages;
		if (shrink_pages == 0)
			break;
		pool = &_manager->pools[(i + pool_offset)%NUM_POOLS];
		shrink_pages = FUNC1(pool, nr_free);
	}
	/* return estimated number of unused pages in pool */
	return FUNC2();
}