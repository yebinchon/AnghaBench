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
typedef  scalar_t__ vm_paddr_t ;
typedef  int uintmax_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  kmi ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__* phys_avail ; 
 scalar_t__ physmem ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int) ; 
 scalar_t__ realmem ; 
 int virtual_avail ; 
 int virtual_end ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(void *dummy)
{

	/*
	 * Initialise the decrementer-based clock.
	 */
	FUNC3();

	/*
	 * Good {morning,afternoon,evening,night}.
	 */
	FUNC2(FUNC0(cpuid));

#ifdef PERFMON
	perfmon_init();
#endif
	FUNC5("real memory  = %ju (%ju MB)\n", FUNC6((uintmax_t)physmem),
	    FUNC6((uintmax_t)physmem) / 1048576);
	realmem = physmem;

	if (bootverbose)
		FUNC5("available KVA = %zu (%zu MB)\n",
		    virtual_end - virtual_avail,
		    (virtual_end - virtual_avail) / 1048576);

	/*
	 * Display any holes after the first chunk of extended memory.
	 */
	if (bootverbose) {
		int indx;

		FUNC5("Physical memory chunk(s):\n");
		for (indx = 0; phys_avail[indx + 1] != 0; indx += 2) {
			vm_paddr_t size1 =
			    phys_avail[indx + 1] - phys_avail[indx];

			#ifdef __powerpc64__
			printf("0x%016jx - 0x%016jx, %ju bytes (%ju pages)\n",
			#else
			FUNC5("0x%09jx - 0x%09jx, %ju bytes (%ju pages)\n",
			#endif
			    (uintmax_t)phys_avail[indx],
			    (uintmax_t)phys_avail[indx + 1] - 1,
			    (uintmax_t)size1, (uintmax_t)size1 / PAGE_SIZE);
		}
	}

	FUNC8(&kmi);

	FUNC5("avail memory = %ju (%ju MB)\n",
	    FUNC6((uintmax_t)FUNC7()),
	    FUNC6((uintmax_t)FUNC7()) / 1048576);

	/*
	 * Set up buffers, so they can be used to read disk labels.
	 */
	FUNC1();
	FUNC9();
}