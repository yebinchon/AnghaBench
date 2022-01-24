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

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  _SC_PHYS_PAGES ; 
 int available_free_memory ; 
 int free_memory ; 
 int ncpu ; 
 int nthreads ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	long pages, psize;

#if defined(SORT_THREADS)
	ncpu = 1;
#endif

	pages = FUNC1(_SC_PHYS_PAGES);
	if (pages < 1) {
		FUNC0("sysconf pages");
		pages = 1;
	}
	psize = FUNC1(_SC_PAGESIZE);
	if (psize < 1) {
		FUNC0("sysconf psize");
		psize = 4096;
	}
#if defined(SORT_THREADS)
	ncpu = (unsigned int)sysconf(_SC_NPROCESSORS_ONLN);
	if (ncpu < 1)
		ncpu = 1;
	else if(ncpu > 32)
		ncpu = 32;

	nthreads = ncpu;
#endif

	free_memory = (unsigned long long) pages * (unsigned long long) psize;
	available_free_memory = free_memory / 2;

	if (available_free_memory < 1024)
		available_free_memory = 1024;
}