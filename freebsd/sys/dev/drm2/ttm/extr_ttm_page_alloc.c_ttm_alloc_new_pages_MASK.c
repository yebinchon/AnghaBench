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
typedef  scalar_t__ vm_page_t ;
struct pglist {int dummy; } ;
typedef  enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_2__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pglist*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (unsigned int,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 TYPE_1__ plinks ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct pglist*,int,int,scalar_t__*,unsigned int) ; 
 int FUNC7 (scalar_t__*,int,unsigned int) ; 
 scalar_t__ FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct pglist *pages, int ttm_alloc_flags,
		int ttm_flags, enum ttm_caching_state cstate, unsigned count)
{
	vm_page_t *caching_array;
	vm_page_t p;
	int r = 0;
	unsigned i, cpages;
	unsigned max_cpages = FUNC4(count,
			(unsigned)(PAGE_SIZE/sizeof(vm_page_t)));

	/* allocate array for page caching change */
	caching_array = FUNC3(max_cpages * sizeof(vm_page_t), M_TEMP,
	    M_WAITOK | M_ZERO);

	for (i = 0, cpages = 0; i < count; ++i) {
		p = FUNC8(ttm_alloc_flags, cstate);
		if (!p) {
			FUNC5("[TTM] Unable to get page %u\n", i);

			/* store already allocated pages in the pool after
			 * setting the caching state */
			if (cpages) {
				r = FUNC7(caching_array,
							  cstate, cpages);
				if (r)
					FUNC6(pages,
						ttm_flags, cstate,
						caching_array, cpages);
			}
			r = -ENOMEM;
			goto out;
		}

#ifdef CONFIG_HIGHMEM /* KIB: nop */
		/* gfp flags of highmem page should never be dma32 so we
		 * we should be fine in such case
		 */
		if (!PageHighMem(p))
#endif
		{
			caching_array[cpages++] = p;
			if (cpages == max_cpages) {

				r = FUNC7(caching_array,
						cstate, cpages);
				if (r) {
					FUNC6(pages,
						ttm_flags, cstate,
						caching_array, cpages);
					goto out;
				}
				cpages = 0;
			}
		}

		FUNC1(pages, p, plinks.q);
	}

	if (cpages) {
		r = FUNC7(caching_array, cstate, cpages);
		if (r)
			FUNC6(pages,
					ttm_flags, cstate,
					caching_array, cpages);
	}
out:
	FUNC2(caching_array, M_TEMP);

	return r;
}