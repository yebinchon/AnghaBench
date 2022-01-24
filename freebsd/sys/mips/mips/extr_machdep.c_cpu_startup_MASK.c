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
 int RB_VERBOSE ; 
 int boothowto ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* cpu_model ; 
 int /*<<< orphan*/  kmi ; 
 scalar_t__* phys_avail ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int) ; 
 scalar_t__ realmem ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void *dummy)
{

	if (boothowto & RB_VERBOSE)
		bootverbose++;

	FUNC2("CPU model: %s\n", cpu_model);

	FUNC2("real memory  = %ju (%juK bytes)\n", FUNC3((uintmax_t)realmem),
	    FUNC3((uintmax_t)realmem) / 1024);

	/*
	 * Display any holes after the first chunk of extended memory.
	 */
	if (bootverbose) {
		int indx;

		FUNC2("Physical memory chunk(s):\n");
		for (indx = 0; phys_avail[indx + 1] != 0; indx += 2) {
			vm_paddr_t size1 = phys_avail[indx + 1] - phys_avail[indx];

			FUNC2("0x%08jx - 0x%08jx, %ju bytes (%ju pages)\n",
			    (uintmax_t)phys_avail[indx],
			    (uintmax_t)phys_avail[indx + 1] - 1,
			    (uintmax_t)size1,
			    (uintmax_t)size1 / PAGE_SIZE);
		}
	}

	FUNC5(&kmi);

	FUNC2("avail memory = %ju (%juMB)\n", 
	    FUNC3((uintmax_t)FUNC4()),
	    FUNC3((uintmax_t)FUNC4()) / 1048576);
	FUNC1();

	/*
	 * Set up buffers, so they can be used to read disk labels.
	 */
	FUNC0();
	FUNC6();
}