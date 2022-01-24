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
typedef  int /*<<< orphan*/  vm_page_t ;
struct ttm_page_pool {unsigned int npages; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct pglist {int dummy; } ;
typedef  enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_2__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pglist*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pglist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ plinks ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_page_pool*,int,int,unsigned int) ; 

__attribute__((used)) static unsigned FUNC7(struct ttm_page_pool *pool,
					struct pglist *pages,
					int ttm_flags,
					enum ttm_caching_state cstate,
					unsigned count)
{
	vm_page_t p;
	unsigned i;

	FUNC4(&pool->lock);
	FUNC6(pool, ttm_flags, cstate, count);

	if (count >= pool->npages) {
		/* take all pages from the pool */
		FUNC0(pages, &pool->list, plinks.q);
		count -= pool->npages;
		pool->npages = 0;
		goto out;
	}
	for (i = 0; i < count; i++) {
		p = FUNC1(&pool->list);
		FUNC3(&pool->list, p, plinks.q);
		FUNC2(pages, p, plinks.q);
	}
	pool->npages -= count;
	count = 0;
out:
	FUNC5(&pool->lock);
	return count;
}