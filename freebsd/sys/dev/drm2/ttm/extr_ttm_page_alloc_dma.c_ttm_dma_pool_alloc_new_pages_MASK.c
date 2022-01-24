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
struct page {int dummy; } ;
struct list_head {int dummy; } ;
struct dma_pool {int /*<<< orphan*/  dev_name; int /*<<< orphan*/  name; } ;
struct dma_page {int /*<<< orphan*/  page_list; struct page* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct dma_page* FUNC1 (struct dma_pool*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct page**) ; 
 struct page** FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_pool*,struct list_head*,struct page**,unsigned int) ; 
 int FUNC9 (struct dma_pool*,struct page**,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct dma_pool *pool,
					struct list_head *d_pages,
					unsigned count)
{
	struct page **caching_array;
	struct dma_page *dma_p;
	struct page *p;
	int r = 0;
	unsigned i, cpages;
	unsigned max_cpages = FUNC5(count,
			(unsigned)(PAGE_SIZE/sizeof(struct page *)));

	/* allocate array for page caching change */
	caching_array = FUNC3(max_cpages*sizeof(struct page *), GFP_KERNEL);

	if (!caching_array) {
		FUNC7("%s: Unable to allocate table for new pages\n",
		       pool->dev_name);
		return -ENOMEM;
	}

	if (count > 1) {
		FUNC6("%s: (%s:%d) Getting %d pages\n",
			 pool->dev_name, pool->name, current->pid, count);
	}

	for (i = 0, cpages = 0; i < count; ++i) {
		dma_p = FUNC1(pool);
		if (!dma_p) {
			FUNC7("%s: Unable to get page %u\n",
			       pool->dev_name, i);

			/* store already allocated pages in the pool after
			 * setting the caching state */
			if (cpages) {
				r = FUNC9(pool, caching_array,
							  cpages);
				if (r)
					FUNC8(
						pool, d_pages, caching_array,
						cpages);
			}
			r = -ENOMEM;
			goto out;
		}
		p = dma_p->p;
#ifdef CONFIG_HIGHMEM
		/* gfp flags of highmem page should never be dma32 so we
		 * we should be fine in such case
		 */
		if (!PageHighMem(p))
#endif
		{
			caching_array[cpages++] = p;
			if (cpages == max_cpages) {
				/* Note: Cannot hold the spinlock */
				r = FUNC9(pool, caching_array,
						 cpages);
				if (r) {
					FUNC8(
						pool, d_pages, caching_array,
						cpages);
					goto out;
				}
				cpages = 0;
			}
		}
		FUNC4(&dma_p->page_list, d_pages);
	}

	if (cpages) {
		r = FUNC9(pool, caching_array, cpages);
		if (r)
			FUNC8(pool, d_pages,
					caching_array, cpages);
	}
out:
	FUNC2(caching_array);
	return r;
}