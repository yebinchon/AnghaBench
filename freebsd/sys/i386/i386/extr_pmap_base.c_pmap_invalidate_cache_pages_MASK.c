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
 int CPUID_CLFSH ; 
 int PAGE_SIZE ; 
 int PMAP_CLFLUSH_THRESHOLD ; 
 int cpu_feature ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(vm_page_t *pages, int count)
{
	int i;

	if (count >= PMAP_CLFLUSH_THRESHOLD / PAGE_SIZE ||
	    (cpu_feature & CPUID_CLFSH) == 0) {
		FUNC1();
	} else {
		for (i = 0; i < count; i++)
			FUNC0(pages[i]);
	}
}