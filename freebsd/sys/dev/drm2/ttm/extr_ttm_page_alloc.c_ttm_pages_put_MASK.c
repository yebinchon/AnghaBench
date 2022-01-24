#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(vm_page_t *pages, unsigned npages)
{
	unsigned i;

	/* Our VM handles vm memattr automatically on the page free. */
	if (FUNC1(pages, npages))
		FUNC0("[TTM] Failed to set %d pages to wb!\n", npages);
	for (i = 0; i < npages; ++i)
		FUNC2(pages[i]);
}