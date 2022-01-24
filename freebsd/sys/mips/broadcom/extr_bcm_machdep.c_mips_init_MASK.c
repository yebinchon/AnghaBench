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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ CFE_MI_AVAILABLE ; 
 int /*<<< orphan*/  KDB_WHY_BOOTFLAGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int RB_KDB ; 
 int boothowto ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__* dump_avail ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  kernel_kseg0_end ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__* phys_avail ; 
 scalar_t__ physmem ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ realmem ; 

__attribute__((used)) static void
FUNC13(void)
{
	int i, j;

	FUNC12("entry: mips_init()\n");

#ifdef CFE
	/*
	 * Query DRAM memory map from CFE.
	 */
	physmem = 0;
	for (i = 0; i < 10; i += 2) {
		int result;
		uint64_t addr, len, type;

		result = cfe_enummem(i / 2, 0, &addr, &len, &type);
		if (result < 0) {
			BCM_TRACE("There is no phys memory for: %d\n", i);
			phys_avail[i] = phys_avail[i + 1] = 0;
			break;
		}
		if (type != CFE_MI_AVAILABLE) {
			BCM_TRACE("phys memory is not available: %d\n", i);
			continue;
		}

		phys_avail[i] = addr;
		if (i == 0 && addr == 0) {
			/*
			 * If this is the first physical memory segment probed
			 * from CFE, omit the region at the start of physical
			 * memory where the kernel has been loaded.
			 */
			phys_avail[i] += MIPS_KSEG0_TO_PHYS(kernel_kseg0_end);
		}
		
		BCM_TRACE("phys memory is available for: %d\n", i);
		BCM_TRACE(" => addr =  %jx\n", addr);
		BCM_TRACE(" => len =  %jd\n", len);

		phys_avail[i + 1] = addr + len;
		physmem += len;
	}

	BCM_TRACE("Total phys memory is : %ld\n", physmem);
	realmem = btoc(physmem);
#endif

	for (j = 0; j < i; j++)
		dump_avail[j] = phys_avail[j];

	physmem = realmem;

	FUNC4();
	FUNC5(physmem);
	FUNC8();
	FUNC11();
	FUNC9();
	FUNC10();
	FUNC7();
#ifdef KDB
	if (boothowto & RB_KDB)
		kdb_enter(KDB_WHY_BOOTFLAGS, "Boot flags requested debugger");
#endif
}