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
struct pglist {int dummy; } ;
typedef  enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_2__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pglist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ plinks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pglist *pages,
		int ttm_flags, enum ttm_caching_state cstate,
		vm_page_t *failed_pages, unsigned cpages)
{
	unsigned i;
	/* Failed pages have to be freed */
	for (i = 0; i < cpages; ++i) {
		FUNC0(pages, failed_pages[i], plinks.q);
		FUNC1(failed_pages[i]);
	}
}