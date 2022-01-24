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
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  kmi ; 
 scalar_t__* phys_avail ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int) ; 
 scalar_t__ realmem ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void *dummy)
{

	FUNC5();
	FUNC2();

	FUNC3("real memory  = %ju (%ju MB)\n", FUNC4((uintmax_t)realmem),
	    FUNC4((uintmax_t)realmem) / (1024 * 1024));

	/*
	 * Display any holes after the first chunk of extended memory.
	 */
	if (bootverbose) {
		int indx;

		FUNC3("Physical memory chunk(s):\n");
		for (indx = 0; phys_avail[indx + 1] != 0; indx += 2) {
			vm_paddr_t size;

			size = phys_avail[indx + 1] - phys_avail[indx];
			FUNC3(
			    "0x%016jx - 0x%016jx, %ju bytes (%ju pages)\n",
			    (uintmax_t)phys_avail[indx],
			    (uintmax_t)phys_avail[indx + 1] - 1,
			    (uintmax_t)size, (uintmax_t)size / PAGE_SIZE);
		}
	}

	FUNC7(&kmi);

	FUNC3("avail memory = %ju (%ju MB)\n",
	    FUNC4((uintmax_t)FUNC6()),
	    FUNC4((uintmax_t)FUNC6()) / (1024 * 1024));
	if (bootverbose)
		FUNC1();

	FUNC0();
	FUNC8();
}